const express = require("express");
const my = require("mysql");
const bh = require("body-parser");
const path = require("path");
const np = express();
const session = require("express-session");

np.use(express.static("public"));
np.set("views", path.join(__dirname, "views"));
np.set("view engine", "ejs");

np.use(
  session({
    secret: "bhupedra",
    resave: false,
    saveUninitialized: false,
  })
);

np.use(function (req, res, next) {
  res.header(
    "Cache-Control",
    "no-cache, private, no-store, must-revalidate, max-stale=0, post-check=0, pre-check=0"
  );
  //* ADMIN data----------------------------
  res.locals.aname = req.session.ana;
  res.locals.aem = req.session.aem;
  res.locals.cout = req.session.count;
  res.locals.bCount = req.session.bCount;

  //* User data----------------------------
  res.locals.user = req.session.uname;
  res.locals.uEmail = req.session.uemail;
  res.locals.ToCount = req.session.Tcount;

  //* after order_place
  res.locals.total_amt = req.session.totalSum;
  res.locals.delDate = req.session.del_date;
  next();
});

const con = my.createConnection({
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "booksaw_co",
});
con.connect((err) => {
  if (err) throw err;
  console.log("connected :)");
});

np.get("/", (req, res) => {
  res.sendFile("/public/index.html", { root: __dirname });
});
np.get("/index", (req, res) => {
  res.sendFile("/public/index.html", { root: __dirname });
});
np.get("/reg", (req, res) => {
  res.sendFile("/public/reg.html", { root: __dirname });
});
np.get("/login", (req, res) => {
  res.sendFile("/public/reg.html", { root: __dirname });
});

const url = bh.urlencoded({ extended: false });
np.post("/regProcess", url, (req, res) => {
  const a = req.body.name;
  const b = req.body.email;
  const c = req.body.pwd;

  const q = "insert into members values('" + a + "','" + b + "','" + c + "')";
  con.query(q, (err, result) => {
    if (err) throw err;
    res.sendFile("public/login.html", { root: __dirname });
  });
});

np.post("/logProcess", url, (req, res) => {
  const a = req.body.email;
  const b = req.body.pwd;

  const q = "select * from members where email='" + a + "'";
  con.query(q, (err, result) => {
    // res.send(result);
    if (err) throw err;
    const len = result.length;
    if (len > 0) {
      const pwd = result[0].pwd;
      if (pwd == b) {
        req.session.uname = result[0].name;
        req.session.uemail = result[0].email;
        res.render("index");
      } else {
        res.send("incorrect pwd!");
      }
    } else {
      res.send("email is not found.");
    }
  });
});

np.post("/updProcess", url, (req, res) => {
  const a = req.body.email;
  const b = req.body.pwd;
  const c = req.body.new_pwd;

  const q =
    "update members set pwd='" +
    c +
    "' where email='" +
    a +
    "' and pwd='" +
    b +
    "'";

  con.query(q, (err, result) => {
    if (err) throw err;
    res.sendFile("public/login.html", { root: __dirname });
  });
});

np.get("/logout", (req, res) => {
  const sessionID = req.session.id;
  req.sessionStore.destroy(sessionID, (err) => {
    // callback function. If an error occurs, it will be accessible here.
    if (err) {
      return console.error(err);
    }
    res.redirect("/");
    console.log("The session has been destroyed!");
  });
});

//* Admin Dashboard===========================================================

np.post("/admin_logProcess", url, (req, res) => {
  const a = req.body.email;
  const b = req.body.pwd;

  const q = "select * from admin_log where email='" + a + "'";
  const s = "select * from members";
  const t = "select * from add_Book";
  con.query(s, (err, result) => {
    req.session.count = result.length;
  });
  con.query(t, (err, result) => {
    req.session.bCount = result.length;
  });
  con.query(q, (err, result) => {
    // res.send(result);
    if (err) throw err;
    const len = result.length;
    if (len > 0) {
      const pwd = result[0].pwd;
      if (pwd == b) {
        req.session.ana = result[0].name;
        req.session.aem = result[0].email;
        console.log(req.session.ana);
        console.log(req.session.aem);
        res.render("admin");
      } else {
        res.send("incorrect pwd!");
      }
    } else {
      res.send("email is not found.");
    }
  });
});

np.get("/Show", (req, res) => {
  const q = "select * from members";

  con.query(q, (err, result) => {
    // res.send(result);
    if (err) throw err;
    res.render("users", { data: result });
  });
});

np.get("/back", (req, res) => {
  res.render("admin");
});

np.get("/delProcess", (req, res) => {
  const a = req.query.em;
  var q = "delete from members where email='" + a + "'";
  con.query(q, function (err, result) {
    if (err) throw err;
    res.redirect("/Show");
  });
});

np.get("/count", (req, res) => {
  const p = "select * from members";

  con.query(p, (err, result) => {
    // res.send(result.length);
    if (err) throw err;
    // req.session.count = result.length;
    // console.log(req.session.count);
    res.render("admin");
    // let tab = "<h3>Total User: " + result.length + "</h3>";
    // res.send(tab);
  });
});

//? adding book and rendering to new_book.ejs
np.post("/add_book", url, (req, res) => {
  const a = req.body.cate;
  const b = req.body.book_name;
  const c = req.body.price;
  const d = req.body.author;
  const e = req.body.descp;
  const f = req.body.file_name;

  const q =
    "insert into add_Book values('" +
    a +
    "','" +
    b +
    "','" +
    c +
    "','" +
    d +
    "','" +
    e +
    "','" +
    f +
    "')";

  con.query(q, (err, result) => {
    if (err) throw err;
    res.redirect("/Show_book");
  });
});

np.get("/Show_book", (req, res) => {
  const q = "select * from add_book";

  con.query(q, (err, result) => {
    // res.send(result);
    if (err) throw err;
    req.session.book_count = result.length;
    res.render("new_book", { data: result });
  });
});

//* popular books
np.get("/Show_Pbook", (req, res) => {
  const q = "select * from popular_books";

  con.query(q, (err, result) => {
    // res.send(result);
    if (err) throw err;
    res.render("index", { data: result });
  });
});

np.get("/del_book", (req, res) => {
  const a = req.query.na;
  const q = "delete from add_book where book_name='" + a + "'";

  con.query(q, (err, result) => {
    if (err) throw err;
    res.redirect("/Show_book");
  });
});

np.get("/books_user", (req, res) => {
  const q = "select * from add_book";

  con.query(q, (err, result) => {
    // res.send(result);
    if (err) throw err;
    res.render("all_books", { data: result });
  });
});

np.get("/back_home", (req, res) => {
  res.render("index");
});

np.get("/Show_cate", (req, res) => {
  res.render("cate");
});

np.get("/cart", (req, res) => {
  res.render("cart");
});

//*============================================================================================
//* filter for books===========================================================================
np.get("/personal", (req, res) => {
  const q = "select * from add_book where cate='Personal Development'";
  con.query(q, (err, result) => {
    res.render("personal_dev", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/Spirit", (req, res) => {
  const q = "select * from add_book where cate='Spirituality'";
  con.query(q, (err, result) => {
    res.render("spirituality", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/Fantasy", (req, res) => {
  const q = "select * from add_book where cate='Fantasy novel'";
  con.query(q, (err, result) => {
    res.render("fantasy", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/Bus&Eco", (req, res) => {
  const q = "select * from add_book where cate='Business & Economics'";
  con.query(q, (err, result) => {
    res.render("business", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/Biography", (req, res) => {
  const q = "select * from add_book where cate='Biography'";
  con.query(q, (err, result) => {
    res.render("biography", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/Philosophy", (req, res) => {
  const q = "select * from add_book where cate='Philosophy'";
  con.query(q, (err, result) => {
    res.render("philosophy", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/SciFi", (req, res) => {
  const q = "select * from add_book where cate='SciFi'";
  con.query(q, (err, result) => {
    res.render("SciFi", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/History", (req, res) => {
  const q = "select * from add_book where cate='History'";
  con.query(q, (err, result) => {
    res.render("history", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/Autography", (req, res) => {
  const q = "select * from add_book where cate='Autography'";
  con.query(q, (err, result) => {
    res.render("autography", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/Act&dAd", (req, res) => {
  const q = "select * from add_book where cate='Action and Adventure'";
  con.query(q, (err, result) => {
    res.render("action", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/Det&My", (req, res) => {
  const q = "select * from add_book where cate='Detective and Mystery'";
  con.query(q, (err, result) => {
    res.render("detective", { data: result });
  });
});
//?-------------------------------------------------------------------------------------
np.get("/Novel", (req, res) => {
  const q = "select * from add_book where cate='Novel'";
  con.query(q, (err, result) => {
    res.render("novel", { data: result });
  });
});

//* ADD TO CART====================================
np.get("/store", (req, res) => {
  const a = req.query.id;
  const q = "select * from add_book where book_name='" + a + "'";

  con.query(q, (err, result) => {
    const a = result[0].cate;
    const b = result[0].book_name;
    const c = result[0].price;
    const d = result[0].author;
    const e = result[0].file_name;
    const f = req.session.uname;
    const g = req.session.uemail;

    const q =
      "INSERT INTO cart (cate, book_name, price, author, file_name,u_name,u_email) VALUES('" +
      a +
      "','" +
      b +
      "','" +
      c +
      "','" +
      d +
      "','" +
      e +
      "','" +
      f +
      "','" +
      g +
      "')";

    con.query(q, (err, result) => {
      if (err) throw err;

      //* Insert data into store_cart Table----=-=-=-=-=-=-=-=-=-=-=
      const p =
        "INSERT INTO cart_store (cate, book_name, price, author, file_name,u_name,u_email) VALUES('" +
        a +
        "','" +
        b +
        "','" +
        c +
        "','" +
        d +
        "','" +
        e +
        "','" +
        f +
        "','" +
        g +
        "')";

      con.query(p, (err, result) => {
        if (err) throw err;
        res.redirect("/books_user");
      });
    });
  });
});

//* Show to CART====================================
np.get("/show_cart", (req, res) => {
  const a = req.session.uemail;
  const q =
    "select * from cart where u_email='" + a + "' order by cart_id desc";

  con.query(q, (err, result) => {
    // res.send(result);
    if (err) throw err;
    res.render("cart", { data: result });
  });
});

np.get("/all_clear", (req, res) => {
  const a = req.query.em;
  const q = "delete from cart where u_email='" + a + "'";

  con.query(q, (err, result) => {
    if (err) throw err;
    res.redirect("show_cart");
  });
});

np.get("/del_cart", (req, res) => {
  const a = req.query.id;
  const q = "delete from cart where cart_id='" + a + "'";

  con.query(q, (err, result) => {
    if (err) throw err;
    res.redirect("show_cart");
  });
});

//* CHECKOUT Section-----------------------------------------------------------
np.get("/show_checkout", (req, res) => {
  const a = req.session.uemail;

  const checkDetail = "SELECT * FROM delivery_detail WHERE u_email = ?";
  con.query(checkDetail, [a], (err, result) => {
    if (err) throw err;

    if (result.length > 0) {
      res.redirect("place_order");
    } else {
      const q = "select * from cart where u_email='" + a + "'";
      con.query(q, (err, result) => {
        if (err) throw err;
        res.render("checkout", { data: result });
      });
    }
  });
});

//* Storing delivery_details------------------------------------------------
np.post("/detailProcess", url, (req, res) => {
  const a = req.session.uname;
  const b = req.session.uemail;
  const c = req.body.mobile;
  const d = req.body.add;
  const e = req.body.city_na;
  const f = req.body.pin;
  const g = req.body.state;
  const h = req.body.country_na;

  const q =
    "insert into delivery_detail (u_name, u_email,u_mobileNo, address, city, pin, state, country) values(?,?,?,?,?,?,?,?)";

  con.query(q, [a, b, c, d, e, f, g, h], (err, result) => {
    if (err) throw err;
    res.redirect("place_order");
  });
});

//* showing data to order page----------------------------------------
np.get("/place_order", (req, res) => {
  const a = req.session.uemail;
  const q = "select * from delivery_detail where u_email='" + a + "'";

  con.query(q, (err, result) => {
    if (err) throw err;
    const b = req.session.uemail;
    const p = "select * from cart where u_email='" + b + "'";

    con.query(p, (err, result2) => {
      let rest = { data1: result, data2: result2 };
      res.render("order", { data: rest });
    });
  });
});
//* Update delivery_detail---------------------------------------------------
np.get("/update_detail", (req, res) => {
  const a = req.session.uemail;
  const q = "select * from cart where u_email='" + a + "'";
  con.query(q, (err, result) => {
    if (err) throw err;
    res.render("upd_detail", { data: result });
  });
});
np.post("/updDetailProcess", url, (req, res) => {
  const a = req.session.uemail;
  const b = req.session.uname;
  const c = req.body.mobile;
  const d = req.body.add;
  const e = req.body.city_na;
  const f = req.body.pin;
  const g = req.body.state;
  const h = req.body.country_na;

  const updQuery =
    "UPDATE delivery_detail SET u_name = ?, u_email = ? ,u_mobileNo = ?, address = ?, city = ?, pin = ?, state = ?, country = ? WHERE u_email = ?";

  con.query(updQuery, [b, a, c, d, e, f, g, h, a], (err, result) => {
    if (err) throw err;
    // console.log("Session u_email:", a);
    // console.log(result);
    res.redirect("place_order");
  });
});

np.post("/orderProcess", url, (req, res) => {
  const a = req.session.uemail;
  const i = req.body.date;
  const j = req.body.note;
  const b = req.body.delivery_m;
  const c = req.body.total_sum;

  // Query to get delivery_id
  const getDeliveryIdQuery =
    "SELECT delivery_id FROM delivery_detail WHERE u_email = ?";
  con.query(getDeliveryIdQuery, [a], (err, deliveryResult) => {
    if (err) throw err;
    const deliveryId = deliveryResult[0].delivery_id;

    // Construct the insert query with actual values
    const insertQuery =
      "INSERT INTO orders (user_email, total_amount, payment_method, delivery_id, delivery_date, delivery_note) VALUES (?, ?, ?, ?, ?, ?)";
    const values = [a, c, b, deliveryId, i, j];

    // Execute the insert query
    con.query(insertQuery, values, (err, result) => {
      if (err) throw err;

      const emptyCart = "delete from cart where u_email='" + a + "'";
      con.query(emptyCart, (err, result) => {
        if (err) throw err;
        res.redirect("order_post");
      });
    });
  });
});

np.get("/order_post", (req, res) => {
  const a = req.session.uemail;
  const orderDetail = "select * from orders where user_email='" + a + "'";

  con.query(orderDetail, (err, result1) => {
    const deliveryId = result1[0].delivery_id;

    const delivery_detail =
      "select * from delivery_detail where delivery_id='" + deliveryId + "'";
    con.query(delivery_detail, (err, result2) => {
      let allResult = { data1: result1, data2: result2 };
      res.render("order_placed", { data: allResult });
    });
  });
});

np.get("/show_orders", (req, res) => {
  const a = req.session.uemail;
  const q = "select * from orders where user_email='" + a + "'";

  //* result=order-table
  con.query(q, (err, result1) => {
    // res.send(result1);
    if (err) throw err;
    const deliveryId = result1[0].delivery_id;

    const delivery_detail =
      "select * from delivery_detail where delivery_id='" + deliveryId + "'";

    //* result=delivery_detail-table
    con.query(delivery_detail, (err, result2) => {
      if (err) throw err;

      const cartData = result2[0].u_email;

      const cart_detail =
        "select * from cart_store where u_email='" + cartData + "'";

      //* result=delivery_detail-table
      con.query(cart_detail, (err, result3) => {
        if (err) throw err;
        let result = { data1: result1, data2: result2, data3: result3 };
        res.render("show_orders", { data: result });
      });
    });
  });
});

np.get("/cancel_order", (req, res) => {
  const a = req.query.id;

  const q = "delete from cart_store where cart_id='" + a + "'";
  con.query(q, (err, result) => {
    if (err) throw err;
    res.redirect("show_orders");
  });
});

np.listen(4000);
