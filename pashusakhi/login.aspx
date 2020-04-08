<%@ Page Title="" Language="C#" MasterPageFile="~/pashusakhi.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="pashusakhi.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center" class="content"
    
        style="border: medium solid #000000; padding: 30px; margin: 40px; float: right">
    <h3>Login portal</h3>
    Username: &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="un" runat="server" required></asp:TextBox><br /><br />
    Email:
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtEmail" runat="server" required></asp:TextBox><br /><br />
    Password:
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="password" runat="server" type="password" required></asp:TextBox>
    &nbsp;
    <br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button id="lgin" runat="server" text="login" onclick="lgin_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="rgst" runat="server" text="register" 
            onclientclick="window.open('register.aspx')"/>
     <p>If you haven't registered till now, register first.</p>
     </div>
    <div class="para" style="font-size: large">
    <p>Through this community based approach, 
    women are empowered through technical training and hand holding support to take 
    lead in generating demand for inputs and provide services to livestock farmers. 
    By building their capacities and providing hand holding support, over 4712 PashuSakhis 
    (meaning friends of livestock) have been promoted in 16 Indian states reaching to over 2.5 lakh small livestock farmers daily. 
    </p>
    <br />
    <h3>Uniqueness of approach:</h3>
    <p>Alternative livestock extension services had been a felt need over last five decades. 
    Many experiments around promoting and nurturing such service 
    delivery mechanism had been tried at various points of time, with limited success. 
    Major shortcomings of existing programs were – the trained rural youth responsible to cater to 8-15 villages 
    often focused on treatment, mostly on large livestock, rather than preventive practices and awareness building.
     Conflicting interests resulted in the neglect of small livestock and the poor farmers. 
     Secondly, high costs of travel resulted in the neglect of close monitoring and administering first aid, 
     which was in itself not lucrative for the youth. The trained youth who were men most of the time, had a social and 
     psychological barrier in reaching women, who are the caretakers of livestock.</p><br />
     <p>Based on learning from past limited success and some failure,
      an alternative process was conceptualized and implemented on scale to assess feasibility and impact of 
      Pashu Sakhi model. In this initiative, semi literate women are trained as 
      Pashu Sakhi. Prior to training, the women are selected by the community, their roles and responsibilities are 
      briefed by involving the family heads. The process is followed to enhance community ownership and family support for 
      effective functioning of Pashu Sakhi. Once nominated by local goat farmers, a systematic orientation is organized, 
      followed by 5 day residential training. A participatory training process adjusted with the pace of learner,
       was evolved to have multiple training methodologies around key knowledge, skills and attitudes required to function as
        Pashu Sakhi.</p><br />
     <h3>Role of Pashusakhis</h3>
     <p>Pashu Sakhi performs three kind of complimentary functions –</p>
     <ul>
     <li>Extension of improved practices and knowledge sharing,</li>
     <li>providing door step first aid and counseling services for disease prevention and management and</li>
     <li>Demonstration of best practices and enterprise management in her own house.</li>
     </ul>
     <p>Pashu Sakhis also work as monitoring and support service provider for the project. They visit each goat house 
     and assess the condition. A regular monitoring on disease spread and decrease in frequency of morbidity (disease) 
     is kept through data analysis. They provide critical feedback on adoption and suggest appropriate practice, 
     technology or input based on the relevance and feasibility.</p><br />
     <p>Pashu Sakhis through awareness and training motivate farmers
      to adopt good practices which boosts demand for new inputs. To meet the demand locally, Pashu Sakhis are trained 
      to take up entrepreneurial activities too. In fact, Pashu Sakhis sustain on entrepreneurial initiatives of input supply
       for goat farming rather than by providing services alone (eg., providing treatment and first aid).
       <br />In a nut shell, Pashu Sakhi works more like an Anganwadi worker and ANM in human health management. 
       The only difference is that here she becomes an input supplier, a self business promoter, 
       and also a service provider, making the system sustainable and more effective over a period of time.</p>
     </div>
    
</asp:Content>

