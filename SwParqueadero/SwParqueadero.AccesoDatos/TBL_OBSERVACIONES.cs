//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SwParqueadero.AccesoDatos
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBL_OBSERVACIONES
    {
        public int OBS_CODIGO { get; set; }
        public string OBS_DESCRIPCION { get; set; }
        public int SOL_CODIGO { get; set; }
        public string OBS_USU { get; set; }
    
        public virtual TBL_SOLICITUD TBL_SOLICITUD { get; set; }
    }
}
