﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Экзамен_3_1
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class АбонентыEntities : DbContext
    {
        public АбонентыEntities()
            : base("name=АбонентыEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<Абонент> Абонент { get; set; }
        public virtual DbSet<Разговор> Разговор { get; set; }
        public virtual DbSet<Тарифы> Тарифы { get; set; }
        public virtual DbSet<Телефон> Телефон { get; set; }
    }
}
