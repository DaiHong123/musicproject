package cn.qst.pojo;

public class TbMenu {
    private Integer mid;

    private String mname;

    private Integer parentmid;

    private String ename;

    private Boolean status;

    private Boolean isparent;

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname == null ? null : mname.trim();
    }

    public Integer getParentmid() {
        return parentmid;
    }

    public void setParentmid(Integer parentmid) {
        this.parentmid = parentmid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename == null ? null : ename.trim();
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Boolean getIsparent() {
        return isparent;
    }

    public void setIsparent(Boolean isparent) {
        this.isparent = isparent;
    }

	@Override
	public String toString() {
		return "TbMenu [mid=" + mid + ", mname=" + mname + ", parentmid=" + parentmid + ", ename=" + ename + ", status="
				+ status + ", isparent=" + isparent + "]";
	}
}