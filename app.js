function createRepository(){
	//alert("createRepository");
	showCreateWindow();
}

function cloneRepository(){
	alert("cloneRepository");
}

function showCreateWindow(){
	var cWindow = $(
		'<div id="create-window"><ul>'
		+	'<li>リポジトリ名：<input type="text" name="repository"></li>'
		+	'<li>ブックマーク名：<input type="text" name="bookmark"></li>'
		+	'<li>保存先のパス：<input type="text" name="path"></li>'
		+	'</ul>'
		+ 	'<p><input type="button" value="キャンセル">'
		+	'<input type="submit" value="新規作成"></p></div>');
	var win = document.getElementById("menu");
	cWindow.appendTo(win);
}