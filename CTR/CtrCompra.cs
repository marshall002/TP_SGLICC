using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;

namespace CTR
{
    public class CtrCompra
    {
        DaoCompra dao_compra;

        public CtrCompra()
        {
            dao_compra = new DaoCompra();
        }
        public void Ctrl_RealizarCompra(DtoCompra dtoc)
        {
            dao_compra.reaistrar_compra(dtoc);
        }
    }
}
