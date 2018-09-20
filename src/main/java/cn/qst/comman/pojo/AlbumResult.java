package cn.qst.comman.pojo;
/**
 * 专辑类
 * 将歌手的歌曲等封装起来
 * @author daihong
 *
 */

import java.util.List;

import cn.qst.pojo.TbMusic;

public class AlbumResult {
private String sname;
private Integer songs;
private Integer tryListening;
private List<TbMusic> tbMusics;
public String getSname() {
	return sname;
}
public void setSname(String sname) {
	this.sname = sname;
}
public Integer getSongs() {
	return songs;
}
public void setSongs(Integer songs) {
	this.songs = songs;
}
public Integer getTryListening() {
	return tryListening;
}
public void setTryListening(Integer tryListening) {
	this.tryListening = tryListening;
}
public List<TbMusic> getTbMusics() {
	return tbMusics;
}
public void setTbMusics(List<TbMusic> tbMusics) {
	this.tbMusics = tbMusics;
}


}
