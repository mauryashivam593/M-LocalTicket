<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server" >
    <div>
     <ul class="collapsible popout">
        <li>
            <div class="collapsible-header"><i class="material-icons">fiber_manual_record</i>OVERVIEW</div>
            <div class="collapsible-body"><span> The country looks to create world-class infrastructure, mass rapid transit system is being developed across indian metros to provide a fast, easy and comfortable commute through high-speed trains. reliance infrastructure has partnered with mmrda in mumbai to successfully implement a world-class mass rapid transport system for the city of mumbai.
        versova-andheri-ghatkopar corridor mass rapid transit system (mrts) project was awarded by mumbai metropolitan region development authority (mmrda) through a global competitive bidding process on public-private-partnership (ppp) framework to rinfra led consortium in 2007. this was the first metro project awarded in the country on a ppp basis and entails design, financing, construction, operation and maintenance of about 12 km elevated metro with 12 stations enroute.
        a special purpose vehicle, namely, mumbai metro one private limited (mmopl) has been incorporated for the implementation of the project. r infra holds 69% of the equity share capital of mmopl, while mmrda holds 26% and remaining 5% is held by veolia transport ratp asia, france, through a separate joint venture company and shall undertake operations & maintenance of the project for an initial period of 5 years.
        mumbai metro has provided much needed east to west connectivity and has carried 100 million happy commuters in its first year of operation.
        mumbai metro is modern, clean, fast and most caring infrastructure of mumbai. it not only saves 60min of travel time daily but ensure that every commuter has a nice day</span></div>
        </li>
        <li>
            <div class="collapsible-header"><i class="material-icons">place</i>MISSION</div>
            <div class="collapsible-body"><span> To attain global best practices and become a world-class utility.

 To achieve excellence in service, quality, reliability, safety and customer care.

 To earn the trust and confidence of all customers and stakeholders, exceeding their expectations and make the Company a respected household name.

 To work with vigour, dedication and innovation with total customer satisfaction as the ultimate goal.

 To consistently achieve high growth with the highest levels of productivity.

 To be a technology driven, efficient and financially sound organisation.

 To be a responsible corporate citizen nurturing human values and concern for society, the environment and above all people.

 To promote a work culture that fosters individual growth, team spirit and creativity to overcome challenges and attain goals.

 To encourage ideas, talent and value systems.

 To uphold the guiding principles of trust, integrity and transparency in all aspects of interactions and dealings.</span></div>
        </li>
        <li>
            <div class="collapsible-header"><i class="material-icons">whatshot</i>VISION</div>
            <div class="collapsible-body"><span>To be the most admired and most trusted metro company in the world, delivering safe, reliable and sustainable mode of travel to our customers at competitive costs with international standards of customer care, thereby creating superior value for all stakeholders.</span></div>
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