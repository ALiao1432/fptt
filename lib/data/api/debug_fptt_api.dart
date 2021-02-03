import 'package:fptt/data/api/api.dart';
import 'package:fptt/data/model/board.dart';
import 'package:fptt/injection/injection.dart';
import 'package:html/parser.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: Api, env: [Env.debug])
class DebugFpttApi implements Api {
  @override
  Future<List<Board>> getHotBoards() {
    const String fakeResponse = '''
    <!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>熱門看板 - 批踢踢實業坊</title>

	</head>
    <body>
		
<div id="topbar-container">
	<div id="topbar" class="bbs-content">
		<a id="logo" href="/bbs/">批踢踢實業坊</a>
		<a class="right small" href="/about.html">關於我們</a>
		<a class="right small" href="/contact.html">聯絡資訊</a>
	</div>
</div>

<div id="main-container">
	<div id="action-bar-container">
		<div class="action-bar">
			<div class="btn-group btn-group-cls">
				<a class="btn selected" href="/bbs/hotboards.html">熱門看板</a>
                <a class="btn" href="/cls/1">分類看板</a>
			</div>
		</div>
	</div>

	<div class="b-list-container action-bar-margin bbs-screen">
        
        <div class="b-ent">
            <a class="board" href="/bbs/Gossiping/index.html">
                <div class="board-name">Gossiping</div>
                <div class="board-nuser"><span class="hl f6">13920</span></div>
                <div class="board-class">綜合</div>
                <div class="board-title">&#9678;[八卦] ～板主徵選報名開始～</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/Stock/index.html">
                <div class="board-name">Stock</div>
                <div class="board-nuser"><span class="hl f4">5660</span></div>
                <div class="board-class">學術</div>
                <div class="board-title">&#9678;[股板] GME 聖戰延長賽OT1</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/C_Chat/index.html">
                <div class="board-name">C_Chat</div>
                <div class="board-nuser"><span class="hl f1">3925</span></div>
                <div class="board-class">閒談</div>
                <div class="board-title">&#9678;[西洽] PUI PUI</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/NBA/index.html">
                <div class="board-name">NBA</div>
                <div class="board-nuser"><span class="hl f1">2236</span></div>
                <div class="board-class">籃球</div>
                <div class="board-title">&#9678;[NBA] 2021賽季開始了</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/Lifeismoney/index.html">
                <div class="board-name">Lifeismoney</div>
                <div class="board-nuser"><span class="hl">1372</span></div>
                <div class="board-class">省錢</div>
                <div class="board-title">&#9678;[省錢] Money is Life</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/Baseball/index.html">
                <div class="board-name">Baseball</div>
                <div class="board-nuser"><span class="hl">1093</span></div>
                <div class="board-class">棒球</div>
                <div class="board-title">&#9678;[棒球] Baseball is Life</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/car/index.html">
                <div class="board-name">car</div>
                <div class="board-nuser"><span class="hl">912</span></div>
                <div class="board-class">車車</div>
                <div class="board-title">&#9678;[汽車] 發文請詳讀板規</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/LoL/index.html">
                <div class="board-name">LoL</div>
                <div class="board-nuser"><span class="hl">744</span></div>
                <div class="board-class">遊戲</div>
                <div class="board-title">&#9678;[LoL] PCS 2/19開賽 ←全賽區最晚</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/MobileComm/index.html">
                <div class="board-name">MobileComm</div>
                <div class="board-nuser"><span class="hl">652</span></div>
                <div class="board-class">資訊</div>
                <div class="board-title">&#9678;[通訊] 入板請詳閱板規</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/Tech_Job/index.html">
                <div class="board-name">Tech_Job</div>
                <div class="board-nuser"><span class="hl">632</span></div>
                <div class="board-class">工作</div>
                <div class="board-title">&#9678;[科技] 修機改善是設備終生職責</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/Boy-Girl/index.html">
                <div class="board-name">Boy-Girl</div>
                <div class="board-nuser"><span class="hl">598</span></div>
                <div class="board-class">心情</div>
                <div class="board-title">&#9678;[男女] 你各位 聖誕快樂</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/HatePolitics/index.html">
                <div class="board-name">HatePolitics</div>
                <div class="board-nuser"><span class="hl">582</span></div>
                <div class="board-class">Hate</div>
                <div class="board-title">&#9678;[政黑] 戴口罩、勤洗手</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/WomenTalk/index.html">
                <div class="board-name">WomenTalk</div>
                <div class="board-nuser"><span class="hl">545</span></div>
                <div class="board-class">聊天</div>
                <div class="board-title">&#9678;[女孩] ☺很多投票進行中☺</div>
            </a>
        </div>
        
        <div class="b-ent">
            <a class="board" href="/bbs/sex/index.html">
                <div class="board-name">sex</div>
                <div class="board-nuser"><span class="hl">525</span></div>
                <div class="board-class">男女</div>
                <div class="board-title">&#9678;[西斯] 屬於客家的難忘西斯 ☺☺</div>
            </a>
        </div>
        
	</div>
</div>

    </body>
</html>
    ''';

    try {
      final data = parse(fakeResponse);
      final body = data.body;
      final boardList = body.getElementsByClassName('b-ent').map((e) {
        final boardElement = e.getElementsByClassName('board')[0];
        return Board(
          href: boardElement.attributes['href'],
          name: boardElement.querySelector('div[class="board-name"]').text,
          userNum: int.parse(boardElement.querySelector('div[class="board-nuser"]').text),
          clazz: boardElement.querySelector('div[class="board-class"]').text,
          title: boardElement.querySelector('div[class="board-title"]').text,
        );
      }).toList();
      return Future.value(boardList);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }
}