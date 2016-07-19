<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true" CodeBehind="Alimento.aspx.cs" Inherits="nutricloud_webforms.Alimento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="row seccionFood">
        <div class="container">
            <h3>
                <asp:Label ID="LblNombre" runat="server"></asp:Label></h3>
        </div>
    </div>
    <!--/seccionFood-->

    <div class="container">
        <div class="row">
            <div class="col l3 m3 s12 menu-left">
                <h5>Mis Alimentos</h5>
                <ul>
                    <li><a href="#"><i class="material-icons orange-text text-darken-3 left-i">mode_edit</i>Editar</a></li>
                    <li><a href="#"><i class="material-icons orange-text text-darken-3 left-i">clear</i>Eliminar</a></li>
                    <li><a href="#"><i class="material-icons orange-text text-darken-3 left-i">add</i>Agregar</a></li>
                </ul>
            </div>

            <div class="col l9 m9 s12 home">
                <div class="divtop">
                    <h5>Información Nutricional por Porción (100gr.)</h5>
                    <ul class="datosFood">
                        <li>
                            <h6>
                                <asp:Label ID="LblCalo" runat="server"></asp:Label></h6>
                            <span>Calorías</span>
                        </li>
                        <li>
                            <h6>
                                <asp:Label ID="LblCarbo" runat="server"></asp:Label></h6>
                            <span>Carbo.</span>
                        </li>
                        <li>
                            <h6>
                                <asp:Label ID="LblProt" runat="server"></asp:Label></h6>
                            <span>Proteínas</span>
                        </li>
                        <li>
                            <h6>
                                <asp:Label ID="LblGrasa" runat="server"></asp:Label></h6>
                            <span>Grasas</span>
                        </li>
                    </ul>
                </div>
                <div class="row mtop">
                    <div class="col s12 ingresos-food">
                        <div class="row nobottom">
                            <div class="input-field col s12">
                                <asp:Label ID="Lbllista" runat="server" Text="Ingresar a:"></asp:Label>
                                <asp:DropDownList ID="ddlComidaTipo" runat="server">
                                    <asp:ListItem Value="1"> Desayuno </asp:ListItem>
                                    <asp:ListItem Value="2"> Almuerzo </asp:ListItem>
                                    <asp:ListItem Value="3"> Merienda </asp:ListItem>
                                    <asp:ListItem Value="4"> Cena </asp:ListItem>
                                    <asp:ListItem Value="5"> Aperitivo </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row nobottom">
                            <div class="input-field col s12">
                                <asp:TextBox ID="porcion" class="validate altercalendar porcion" runat="server"></asp:TextBox>
                                <label for="porcion">Porción:</label>
                            </div>
                        </div>
                        <input type="hidden" id="Hidden1" runat="server" />
                        <asp:Button class="btn waves-effect orange btn-ingresar" ID="ingresar" type="submit" Text="Ingresar" OnClick="ingresar_Click" runat="server"></asp:Button>
                    </div>
                </div>
                <!--/row-->
                <div class="row mtop">
                    <h4 class="listaHeader">Información General (gr.)</h4>
                    <ul class="infogral">
                        <li>
                            <h6>Calorías</h6>
                            <span>
                                <asp:Label ID="LblCalo2" runat="server"></asp:Label></span>
                        </li>
                        <li>
                            <h6>Carbohidratos</h6>
                            <span>
                                <asp:Label ID="lblCarbo2" runat="server"></asp:Label></span>
                        </li>
                        <li>
                            <h6>Proteínas</h6>
                            <span>
                                <asp:Label ID="LblProt2" runat="server"></asp:Label></span>
                        </li>
                        <li>
                            <h6>Grasas</h6>
                            <span>
                                <asp:Label ID="LblGrasa2" runat="server"></asp:Label></span>
                        </li>
                        <li>
                            <h6>Agua</h6>
                            <span>
                                <asp:Label ID="LblAgua" runat="server"></asp:Label></span>
                        </li>
                        <li>
                            <h6>Fibra</h6>
                            <span>
                                <asp:Label ID="LblFibra" runat="server"></asp:Label></span>
                        </li>
                    </ul>
                </div>
                <!--/row-->
                <div class="row mtop">
                    <h4 class="listaHeader">Vitaminas (mg.)</h4>
                    <ul class="infogral">
                        <li>
                            <h6>Vitamina B1</h6>
                            <span>
                                <asp:Label ID="LblB1" runat="server"></asp:Label></span>
                        </li>
                        <li>
                            <h6>Vitamina B2</h6>
                            <span>
                                <asp:Label ID="LblB2" runat="server"></asp:Label></span>
                        </li>
                        <li>
                            <h6>Vitamina B3</h6>
                            <span>
                                <asp:Label ID="LblB3" runat="server"></asp:Label></span>
                        </li>
                        <li>
                            <h6>Vitamina C</h6>
                            <span>
                                <asp:Label ID="LblVitC" runat="server"></asp:Label></span>
                        </li>
                    </ul>
                </div>
                <!--/row-->
                <div class="row mtop">
                    <h4 class="listaHeader">Minerales (mg.)</h4>
                    <ul class="infogral">
                        <li>
                            <h6>Calcio</h6>
                            <span>
                                <asp:Label ID="LblCal" runat="server"></asp:Label></span>
                        </li>
                        <li>
                            <h6>Hierro</h6>
                            <span>
                                <asp:Label ID="LblHie" runat="server"></asp:Label></span>
                        </li>
                    </ul>
                </div>
                <!--/row-->
            </div>
            <!--/col9-->
        </div>
        <!--/row-->
    </div>
    <!--/container-->

</asp:Content>


