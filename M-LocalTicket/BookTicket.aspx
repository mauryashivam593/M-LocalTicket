<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookTicket.aspx.cs" Inherits="BookTicket"  MasterPageFile="~/MasterPage.master"%>
<asp:Content ID="BookTicket" ContentPlaceHolderID="ContentBody" runat="server">
        <div>
 <div class="row">
    <div class="col s12">
      <div class="row">
        <div class="input-field col s12">
          <i class="material-icons prefix">textsms</i>
          <input type="text" id="autocomplete-input" class="autocomplete">
          <label for="autocomplete-input">Source</label>
        </div>
      </div>
    </div>
  </div>


        </div>
    <script>
        var elem = document.getElementById('autocomplete-input');
        var instance = new M.Autocomplete(elem);
        var instance = M.Autocomplete.getInstance(elem);

        instance.updateData({
            churchgate {
                "Apple": null,
                "Microsoft": null,
                "Google": 'https://placehold.it/250x250'
            },
        }); // Move previous n times.


    </script>
    </asp:Content>