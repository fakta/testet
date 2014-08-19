<%@ Control Language="C#" EnableViewState="false"  %>
<%@ Register TagPrefix="base" namespace="spbase.controls" assembly="spbase" %>
<%@ Import namespace="spbase.utils"%>
<script runat="server">
    private string _subjectsFromIds(object ids){
        string _ret = "";
        if(ids==DBNull.Value) return "";
        string[] _token = ((string)ids).Split(',');
        foreach (string id in _token)
        {
            try{
                if(string.IsNullOrEmpty(id)) continue;
                int _id = int.Parse(id);
                if (PostHelper.AllSubjects.ContainsKey(_id))
                {
                    if (!string.IsNullOrEmpty(_ret)) _ret += " ";
                    _ret += PostHelper.AllSubjects[_id];
                }
            }catch(Exception e){}

        }

        return _ret;
    }
</script>



<div id="slide_load"></div>
<div class="video-container">
    <video class="slide-bg" loop="" autoplay="">
	<source src="http://www.sitepilot.net/fakta2/intro.mp4" type="video/mp4"></source>
        <!-- Your browser does not support the video tag. -->
    </video>
    <div class="overlay"></div>
</div>




    <asp:Repeater runat="server" id="items">
        <ItemTemplate>
            <div class="slide <%#_subjectsFromIds(Eval("subjects"))%>">
                <div class="slide-inner">
                    <%#DataBinder.Eval(Container.DataItem,"body")%>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

<div id="read_more"><span class="down-arrow"></span></div>