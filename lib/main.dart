import 'package:flutter/material.dart';
import 'package:flutter_app/main_1.dart';

/*void main() => runApp(new Center(
      child: new Text("丢雷楼木",textDirection: TextDirection.ltr,),
    ));*/

void main() => runApp(
      new Sample_16(),
    );

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "appbar title",
          textDirection: TextDirection.ltr,
          style: Theme.of(context).primaryTextTheme.title,
        ),
      ),
      body: new Center(
        child: new Text(
          "丢雷楼木",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

//效果图如 images/sample_1.jpg
class MyScalfaold2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      // ignore: argument_type_not_assignable
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu), tooltip: "导航栏", onPressed: null),
        title: new Text("京东"),
        actions: <Widget>[
          new IconButton(
              //界面上显示的图标
              icon: new Icon(Icons.account_box),
              //长安上面图标后显示的内容
              tooltip: "长按我显示",
              //点击该按钮时的回调，类似于Android的onclick如果设置为null表示禁用该按钮,但是不妨碍tooltip
              onPressed: null)
        ],
      ),
      body: new Center(
        child: new Text("这是body部分！"),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: "劳资被按了",
        onPressed: null,
        backgroundColor: Colors.amber,
        child: new Icon(Icons.add),
      ),
    );
  }
}

//效果图如  images/sample_2
class Sample_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //标题
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32),
      //整体是一个水平布局
      child: new Row(
        children: <Widget>[
          //这里用Expanded的好处就是 会占用icon之外的剩余空间
          new Expanded(
              child: new Column(
            //文本是起始端对齐
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: new Text(
                  "Oeschinen Lake Campground",
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Text(
                "Kandersteg, Switzerland",
                style: new TextStyle(color: Colors.grey[500]),
              )
            ],
          )),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text("41")
        ],
      ),
    );

    //通过传入的图标和文字内容得到控件
    Column getCoulme(IconData ic, String text) {
      return new Column(
        children: <Widget>[new Icon(ic), new Text(text)],
      );
    }

    //实现按钮部分
    Widget buttonSection = new Container(
      child: new Row(
        //对其方式
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          getCoulme(Icons.call, "CALL"),
          getCoulme(Icons.near_me, "ROUTE"),
          getCoulme(Icons.share, "SHARE"),
        ],
      ),
    );

    //实现文本部分
    Widget widget = new Container(
      padding: EdgeInsets.all(23),
      child: new Text(
        "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
        softWrap: true,
      ),
    );
    return new MaterialApp(
      title: "FlutterApp",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter Layout"),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              "images/lake.jpg",
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            widget,
          ],
        ),
      ),
    );
  }
}

//简单listview    2019年3月9日08:38:27  效果如如  images/sample_3.jpg

class Sample_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new MaterialApp(
      title: "Listview",
      home: new Scaffold(
        appBar: new AppBar(
          leading: new Text("ListTitle"),
        ),
        body: new MyCard(),
      ),
    );
  }
}

class MyCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyCardState();
  }
}

class MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    var _throwShotAway = false;
    // TODO: implement build
    return new Card(
      child: new ListTile(
        title: new Text("This is title"),
        subtitle: new Text("This is subtitle"),
        leading: new Icon(Icons.email, color: Colors.blueAccent),
        trailing: new Checkbox(
            value: _throwShotAway,
            onChanged: (bool newValue) {
              setState(() {
                _throwShotAway = newValue;
              });
            }),
      ),
    );
  }
}

/**
 * ygang
 * 2019年3月9日09:26:09
 * 实际效果如 images/sample_4.jpg
 * **/
class ListSample_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget getListItem(String title, IconData icon) {
      return new Container(
        child: new ListTile(
          leading: new Icon(icon),
          title: new Text("title"),
          subtitle: new Text("subtitle"),
          trailing: new Icon(icon),
        ),
      );
    }

    return new MaterialApp(
      title: "Sample_4",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("appbarTitle"),
        ),
        body: new Center(
          child: new ListView(
            children: <Widget>[
              getListItem("item1", Icons.map),
              getListItem("item2", Icons.phone),
              getListItem("item3", Icons.map),
            ],
          ),
        ),
      ),
    );
  }
}

/***
 * ygang
 * 2019年3月9日09:27:53
 * 垂直listview
 * 实际效果如  images/sample_5
 * */
class ListSample_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget getWidget(String title, IconData icon) {
      return new Container(
        width: 160,
        child: new ListTile(
          title: new Text(title),
          leading: new Icon(icon),
        ),
      );
    }

    return new MaterialApp(
      title: "sample_4",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("appbar_4"),
        ),
        body: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            getWidget('Maps', Icons.map),
            getWidget('phone', Icons.phone),
            getWidget('Maps', Icons.map),
          ],
        ),
      ),
    );
  }
}

/**
 * ygang
 * 2019年3月9日09:55:35
 * 数据量大的listview
 * 效果如images/sample_6
 * **/
class ListSample_6 extends StatelessWidget {
  List<String> iteml;

  //new List<String>.generate(10000, (i) => "Item $i")
  ListSample_6({Key key, @required this.iteml}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "sample6",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Sample_6"),
        ),
        body: new Center(
          child: new ListView.builder(
            itemBuilder: (context, index) {
              return new ListTile(
                title: new Text("${iteml[index]}"),
              );
            },
            itemCount: iteml.length,
          ),
        ),
      ),
    );
  }
}

/**
 * ygang
 * 2019年3月9日10:28:18
 * container的使用
 * 效果图如images/sample_7
 * **/
class ConntainSample_7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "sample_7",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("connatain"),
        ),
        body: new Container(
          child: new GridView(gridDelegate: null),
        ),
      ),
    );
  }
}

class Mycard_7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new CardSet_7();
  }
}

class CardSet_7 extends State<Mycard_7> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var img = new Expanded(
      child: new Container(
        decoration: new BoxDecoration(
            border: new Border.all(color: Colors.black38, width: 10.0),
            borderRadius: const BorderRadius.all(const Radius.circular(8.0))),
        margin: const EdgeInsets.all(4.0),
        child: new Image.asset("images/lake.jpg"),
      ),
    );

    var row = new Row(
      children: <Widget>[
        img,
        img,
      ],
    );

    return new Container(
      child: new ListView(
        children: <Widget>[
          row,
          row,
          row,
          row,
          row,
          row,
          row,
          row,
        ],
      ),
    );
  }
}

//stack相当于xml里面的framlayout
class Sample_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Stack",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("stack"),
        ),
        body: new Sample_8_1(),
      ),
    );
  }
}

class Sample_8_1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Sample_8_2();
  }
}

class Sample_8_2 extends State<Sample_8_1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      alignment: Alignment(0, -0.6),
      children: <Widget>[
        new CircleAvatar(
          backgroundColor: Colors.black12,
          backgroundImage: new AssetImage("images/lake.jpg"),
          radius: 100,
        ),
        new Text("今天开心吗")
      ],
    );
  }
}

/**
 * ygang
 * 2019年3月11日15:21:08
 * 如图 sample_9
 * **/
class Sample_9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Widget card = new Card(
      color: Colors.cyan,
      margin: EdgeInsets.all(10),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getSample_8_1(),
          getSample_8_2(),
          _buildRowText(),
        ],
      ),
    );

    return new MaterialApp(
      title: "Card",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Card"),
        ),
        body: new SizedBox(
          height: 400,
          child: card,
        ),
      ),
    );
  }
}

//文字部分
Widget getSample_8_2() {
  return new Expanded(
      child: new Container(
    margin: const EdgeInsets.only(left: 10.0, top: 10.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text(
          "Number 10",
          style: const TextStyle(color: Colors.white),
        ),
        new Text(
          "Whitehaven Beach",
          style: const TextStyle(color: Colors.white),
        ),
        new Text(
          "Whitsunday lsland, Whitsunday lslands",
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ),
  ));
}

/**
 * 3.水平文本部分
 */
Widget _buildRowText() {
  return new Row(
    children: [
      _buildContainer("SHARE"),
      _buildContainer("EXPLORE"),
    ],
  );
}

Widget _buildContainer(String text) {
  return new Container(
      margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
      child: new Text(
        text,
        style: new TextStyle(
            fontSize: 15.0, color: Colors.blue, fontWeight: FontWeight.bold),
      ));
}

//图片部分
Widget getSample_8_1() {
  return new Stack(
    alignment: AlignmentDirectional.bottomStart,
    children: <Widget>[
      new Image.asset("images/lake.jpg"),
      new Container(
        padding: EdgeInsets.only(left: 15, bottom: 15),
        child: new Text(
          "Top 10 Australian beaches",
          style: new TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      )
    ],
  );
}

/**
 * ygang
 * 2019年3月11日16:39:30
 * 侧滑删除
 * 如图
 * **/
class Sample_10 extends StatelessWidget {
  List<String> items;

  Sample_10({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "111",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("侧滑删除"),
        ),
        body: new ListView.builder(
          itemBuilder: (context, index) {
            final item = items[index];
            return new Dismissible(
                //如果Dismissible是一个列表项 它必须有一个key 用来区别其他项
                key: new Key(item),
                //在child被取消时调用
                onDismissed: (direction) {
                  items.removeAt(index);
                  //这个和Android的SnackBar差不多
                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text("$item dismissed")));
                },
                //如果指定了background 他将会堆叠在Dismissible child后面 并在child移除时暴露
                background: new Container(
                  color: Colors.red,
                ),
                child: new ListTile(
                  title: new Text("$item"),
                ));
          },
          itemCount: items.length,
        ),
      ),
    );
  }
}

/***
 *ygang
 * 2019年3月12日08:22:20
 * gridview
 *  */
Widget getGridview_1() {
  return new GridView.extent(
    //横轴的最大间距
    maxCrossAxisExtent: 180,
    padding: EdgeInsets.all(5),
    //主轴间距
    mainAxisSpacing: 4,
    //横轴间距
    crossAxisSpacing: 4,
    children: getList(),
  );
}

List<Container> getList() {
  return new List.generate(30, (int index) {
    new Container(
      child: new Image.asset("images/lake.jpg"),
    );
  });
}

/**
 * ygang
 * 2019年3月12日09:00:54
 *
 * **/
class Sample_11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "sampel11",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("sample11"),
        ),
        body: GridViewSample(),
      ),
    );
  }
}

/**
 * 2019年3月12日09:05:00
 * **/
class GridViewSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GridviewSample_1();
  }
}

/**
 * 2019年3月12日09:05:43
 * **/
class GridviewSample_1 extends State<GridViewSample> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new CustomScrollView(
      primary: false,
      slivers: <Widget>[
        new SliverPadding(
          padding: const EdgeInsets.all(20.0),
          sliver: new SliverGrid.count(
            crossAxisSpacing: 10.0,
            //      横轴数量 这里的横轴就是x轴 因为方向是垂直的时候 主轴是垂直的
            crossAxisCount: 2,
            children: getList(),
          ),
        ),
      ],
    );
  }
}

class Sample_12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "111",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("start"),
        ),
        body: new Center(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.red,
              ),
              new Icon(
                Icons.star,
                color: Colors.amber,
              ),
              new Icon(
                Icons.star,
                color: Colors.blue,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
              ),
              new Icon(
                Icons.star,
                color: Colors.black38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Sample_13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "13",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("sample_13"),
        ),
        body: new GestureDetector(
          //发生点击事件后回调
          onTap: () {
//            print("hia");
            /* Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Second()));*/
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Sample_12()));
          },
          //发生双击时间后回调
          onDoubleTap: () {
            print("hia hia");
          },
          //      长按事件
          onLongPress: () {
            print("hia hia hia........");
          },
          child: new Image.asset("images/lake.jpg"),
        ),
      ),
    );
  }
}

/**
 * 第一个页面
 */
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter"),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text("登录"),
            onPressed: () {
              //跳转到新的 页面我们需要调用 navigator.push方法
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Second()));
            }),
      ),
    );
  }
}

/**
 * 第二个页面
 */
class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter"),
      ),
      body: new Center(
        //onPressed  点击事件
        child: new RaisedButton(
            child: new Text("注销"),
            onPressed: () {
              //回到上一个页面 该pop将Route从导航器管理的路由栈中移除当前路径
              Navigator.pop(context);
            }),
      ),
    );
  }
}

/**
 * 主页
 * **/
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("京东商城"),
      ),
      body: new Center(
        child: new SelecButton(),
      ),
    );
  }
}

/**
 * ygang
 * 2019年3月12日11:33:33
 * 添加一个打开页面的按钮
 * **/
class SelecButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
      onPressed: () {
        _navigatorAndDisplaySelection(context);
      },
      child: new IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.red,
          ),
          onPressed: null),
    );
  }
}

/**
 * 启动并返回结果
 * async await
 * **/
Sample_14(BuildContext context) async {
  var result = await Navigator.push(context,
      new MaterialPageRoute(builder: (context) => new SelectionScreen()));
  Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("$result")));
}

/**
 *  第二种异步方式 Future API
 * 启动后不等待返回结果 但是返回后有回调函数 相当于注册了一个接收者
 */
_navigatorAndDisplaySelection(BuildContext context) {
  print("----c------");
  Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new SelectionScreen()))
      .then((result) {
    print("----E------");
    Scaffold.of(context)
        .showSnackBar(new SnackBar(content: new Text("$result")));
  }).catchError((error) {
    print("$error");
  });
  print("----d------");
}

/**
 * 在购物车页面中显示两个商品
 */
class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("购物车"),
      ),
      body: new Center(
        //创建一个垂直的布局
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _getPadding(context, "三级头"),
            _getPadding(context, "三级甲"),
          ],
        ),
      ),
    );
  }

  Widget _getPadding(BuildContext context, String text) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new RaisedButton(
        onPressed: () {
          Navigator.pop(context, text);
        },
        child: new Text(text),
      ),
    );
  }
}

/**
 * ygang
 * 2019年3月12日13:54:44
 * **/
class Sample_15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "11",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("123"),
        ),
        body: new Sample_15_1(),
      ),
    );
  }
}

class Sample_15_1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Sample_15_2();
  }
}

class Sample_15_2 extends State<Sample_15_1> {
  // material包下的类 可编辑文本控制器 text将被作为初始文本显示在TextField中
//  final TextEditingController _controller = new TextEditingController(text: "duo_shine");
  //text将被作为初始文本显示在TextField中
  final TextEditingController _controller = new TextEditingController.fromValue(
      new TextEditingValue(text: "duo_shine"));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new TextField(
          decoration: InputDecoration(hintText: "来点干货"),
          controller: _controller,
        ),
        new RaisedButton(
          onPressed: null,
          child: new Text(
            "你点我啊！",
            style: TextStyle(color: Colors.red),
          ),
        )
      ],
    );
  }
}

/**
 * AnimatedWidget会自动调用addlistener和setState
 */
class AnimatedLogo extends AnimatedWidget {
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return new Center(
      child: new Container(
        margin: new EdgeInsets.symmetric(vertical: 10.0),
        height: animation.value,
        width: animation.value,
        child: new FlutterLogo(),
      ),
    );
  }

  AnimatedLogo({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
}

class LogoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LogoAppState();
  }
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller);
    controller.forward();
  }

  @override
  build(dynamic) {
    return new AnimatedLogo(animation: animation);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

/**
 * ygang
 * 2019年3月12日14:27:39
 * **/
class Sample_16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("sample_16"),
        ),
        body: new Sample_16_1(),
      ),
    );
  }
}

class Sample_16_1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Sample_16_2();
  }
}

class Sample_16_2 extends State<Sample_16_1>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  /**
   *重写此方法以执行初始化 每次构建State调用此方法一次 注意如果重写此方法 必须加 super.initState();
   */
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //动画控制器
    controller = new AnimationController(
        //vsync 需要实现TickerProviderStateMixin or SingleTickerProviderStateMixin 可以避免动画不在当前屏幕显示时消耗资源
        duration: const Duration(milliseconds: 2000), //持续时间
        vsync: this);
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
      ..addListener(() {
        //..代表的是给animate方法的返回值添加addListener监听
        setState(() {}); //build重新构建
      });
    //开始执行此动画
    controller.forward();
  }

  /**
   * 从树种删除此对象时调用释放资源
   */
  @override
  void dispose() {
    // TODO: implement dispose
    //释放此对象使用的资源以防止内存泄漏,调用该方法后,此对象不再可用
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        height: animation.value,
        width: animation.value,
        child: new FlutterLogo(),
      ),
    );
  }
}

/**
 * ygang
 * 2019年3月12日15:07:34
 * 接口访问
 *
 * **/
class Sample_17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("http"),
        ),
        body: new Sample_17_1(),
      ),
    );
  }
}

class Sample_17_1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

