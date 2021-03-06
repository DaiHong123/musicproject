package cn.qst.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.qst.mapper.TbMusiclistMapper;
import cn.qst.pojo.TbMusiclist;
import cn.qst.pojo.TbMusiclistExample;
import cn.qst.pojo.TbMusiclistExample.Criteria;
import cn.qst.service.MusiclistService;

@Service
public class MusiclistServiceImpl implements MusiclistService {
	
	@Autowired
	private TbMusiclistMapper musicListDao;
	
	// 根据用户id查找器创建的歌单
	@Override
	public List<TbMusiclist> selectByUid(String uid) {
		TbMusiclistExample example = new TbMusiclistExample();
		Criteria criteria = example.createCriteria();
		criteria.andUidEqualTo(uid);
		List<TbMusiclist> list = musicListDao.selectByExample(example);
		return list;
	}

	@Override
	public boolean deleteById(int mlid) {
		return musicListDao.deleteByPrimaryKey(mlid)==1;
	}


	@Override
	public boolean update(TbMusiclist musiclist) {
		// TODO Auto-generated method stub
		return false;
	}



	@Override
	public boolean save(TbMusiclist musiclist) {
		return musicListDao.insertSelective(musiclist)==1;
	}
	
	
	public void setMusicListDao(TbMusiclistMapper musicListDao) {
		this.musicListDao = musicListDao;
	}



	@Override
	public TbMusiclist selectByNameAndUid(String musicListName, String uid) {
		TbMusiclistExample example = new TbMusiclistExample();
		Criteria criteria = example.createCriteria();
		criteria.andNameEqualTo(musicListName);
		criteria.andUidEqualTo(uid);
		List<TbMusiclist> list = musicListDao.selectByExample(example);
		if( list!=null && list.size()>0 ) return list.get(0);
		return null;
	}

}
