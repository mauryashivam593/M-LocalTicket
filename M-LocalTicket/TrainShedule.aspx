<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrainShedule.aspx.cs" Inherits="TrainShedule" MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="stationmap" ContentPlaceHolderID="ContentBody" runat="server">
<div>
     <ul class="collapsible popout">
        <li>
            <div class="collapsible-header"><i class="material-icons">fiber_manual_record</i>churchgate</div>
            <div class="collapsible-body"></div>
        </li>
        <li>
            <div class="collapsible-header"><i class="material-icons">fiber_manual_record</i>MISSION</div>
            <div class="collapsible-body"></div>
        </li>
        <li>
            <div class="collapsible-header"><i class="material-icons">fiber_manual_record</i>VISION</div>
            <div class="collapsible-body"></div>
        </li>
    </ul>
    <script>
    var elem = document.querySelector('.collapsible');
    var instance = new M.Collapsible(elem);
    var instance = M.Collapsible.getInstance(elem);
    instance.open(3);
    </script>

    </div>
    </asp:Content>