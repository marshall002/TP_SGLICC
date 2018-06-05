using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using CTR;
using DTO;
using System.Data;
using System.Data.SqlClient;

namespace CTR
{
    public class CtrAviso
    {
        DaoAviso dao_aviso;

        public CtrAviso()
        {
            dao_aviso = new DaoAviso();
        }
        public List<DtoAviso> Ctrl_ListarAvisos()
        {
            return dao_aviso.Dao_Listar_Avisos_de_Inmueble(1, 1);
        }
        public List<DtoAviso> Ctrl_ListarProyectos()
        {
            return dao_aviso.Dao_Listar_Proyectos_Inmobiliarios(2, 1);
        }
        public List<DtoAviso> Ctrl_CargarInformaciondelAviso(DtoAviso dto_aviso)
        {
            return dao_aviso.Dao_Carga_información_del_Aviso(dto_aviso);
        }
        public List<DtoCaracteristicasAviso> Ctrl_CargaSubCaracteristicasdelAviso(DtoCaracteristicasAviso dto_aviso)
        {
            return dao_aviso.Dao_Cargar_sub_caracteristicas_del_aviso(dto_aviso);
        }
        public List<DtoCaracteristicasAviso> Ctrl_CargaCaracteristicasAdicionalesdelAviso(DtoCaracteristicasAviso dto_aviso, int caracteristica)
        {
            return dao_aviso.Dao_Cargar_Caracteristicas_Adicionales_del_Aviso(dto_aviso, caracteristica);
        }
        public void Ctrl_Actualizar_Estado_Aviso(DtoAviso dto_aviso, int estado)
        {
            dao_aviso.Dao_Actualizar_Estado_de_Aviso(dto_aviso, estado);
        }
        public void Ctrl_Actualizar_Estado_Compra(int id_aviso, int estado)
        {
            dao_aviso.Dao_Actualizar_estado_de_compra(id_aviso, estado);
        }
        public List<DtoAviso> Ctrl_Cargar_localizacion_del_aviso(DtoAviso dto_aviso)
        {
            return dao_aviso.Dao_Carga_localizacion_del_aviso(dto_aviso);
        }
        public List<DtoCompra> Ctr_Listar_compra_por_Estado(int dto_aviso)
        {
            return dao_aviso.Dao_Listar_compras_x_estado_1(dto_aviso);
        }
        public DataTable Ctr_Listar_Compras_AllItems()
        {
            return dao_aviso.ListarCompras();
        }
        public List<DtoAviso> Ctrl_ListarAvisos_empresa(int tipo_cliente, int estado)
        {
            return dao_aviso.Dao_Listar_Avisos_de_Inmueble(tipo_cliente, estado);
        }

        //Estrella: ver-ventas-avisos-inmobiliarios

        public DataSet Ctr_ListarVentas_Avisos_Inmobiliarios(int id_persona)
        {

            return dao_aviso.Dao_ListarVentas_Avisos_Inmobiliarios(id_persona);
        }

        //Estrella: ver-compras-avisos-inmobiliarios

        public DataSet Ctr_ListarCompras_Avisos_Inmobiliarios(int id_persona)
        {

            return dao_aviso.Dao_ListarCompras_Avisos_Inmobiliarios(id_persona);
        }

        //Estrella: ver-ventas-proyectos-inmobiliarios

        public DataSet Ctr_ListarVentas_Proyectos_Inmobiliarios(int id_persona)
        {

            return dao_aviso.Dao_ListarVentas_Proyectos_Inmobiliarios(id_persona);
        }

        //Estrella: ver-compras-avisos-inmobiliarios

        public DataSet Ctr_ListarCompras_Proyectos_Inmobiliarios(int id_persona)
        {

            return dao_aviso.Dao_ListarCompras_Proyectos_Inmobiliarios(id_persona);
        }

        //yo ks
        public DataSet Ctr_Listar_avisos_ventas(int id_persona)
        {

            return dao_aviso.Dao_Listar_aviso_Ventas(id_persona);
        }
        public DataSet Ctr_Listar_avisos_alquiler(int id_persona)
        {

            return dao_aviso.Dao_Listar_aviso_alquiler(id_persona);

        }
        public DataSet Ctr_Listar_avisos_proyecto(int id_persona)
        {

            return dao_aviso.Dao_Listar_aviso_proyecto(id_persona);
        }
        public DataSet Ctr_Listar_avisos_ventas_usuario()
        {

            return dao_aviso.Dao_Listar_aviso_Ventas_usuario ();
        }
        public DataSet Ctr_Listar_avisos_alquiler_usuario()
        {

            return dao_aviso.Dao_Listar_aviso_alquiler_usuario();

        }
        public DataSet Ctr_Listar_avisos_proyecto_usuario()
        {

            return dao_aviso.Dao_Listar_aviso_proyecto_usuario();
        }


        public DataSet Ctr_buscar_avisos_ventas(int id_persona, int id_distrito)
        {

            return dao_aviso.Dao_buscar_aviso_ventas(id_persona,id_distrito);
        }

        public DataSet Ctr_buscar_avisos_alquiler(int id_persona, int id_distrito)
        {

            return dao_aviso.Dao_buscar_aviso_alquiler(id_persona, id_distrito);
        }
        public DataSet Ctr_buscar_avisos_proyecto(int id_persona, int id_distrito)
        {

            return dao_aviso.Dao_buscar_aviso_proyecto(id_persona, id_distrito);
        }
        public DataSet Ctr_buscar_avisos_proyecto_usuario(int id_distrito)
        {

            return dao_aviso.Dao_buscar_aviso_proyecto_usuario( id_distrito);
        }
        public DataSet Ctr_buscar_avisos_venta_usuario(int id_distrito)
        {

            return dao_aviso.Dao_buscar_aviso_ventas_usuario( id_distrito);
        }
        public DataSet Ctr_buscar_avisos_alquiler_usuario(int id_distrito)
        {

            return dao_aviso.Dao_buscar_aviso_alquiler_usuario( id_distrito);
        }



        //royer
        public DataSet Ctr_SeleccionarUltimoRegistroAviso(aux_DtoAviso aux_dtoaviso)
        {
            return dao_aviso.Dao_SeleccionarUltimoRegistroAviso(aux_dtoaviso);
        }

        public void Ctr_RegistrarAviso(aux_DtoAviso aux_dtoaviso)
        {
            dao_aviso.Dao_RegistrarAviso(aux_dtoaviso);
        }
        public List<aux_DtoAviso2> Ctr_ListarAvisosCreados(DtoAviso dto_aviso)
        {
            return dao_aviso.Dao_ListarAvisosCreados(dto_aviso);
        }
        //ghvhgchfcfghhhgfghfcjfh
        //castitototiototrotrot
    }
}
