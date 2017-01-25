.class public final Lde/greenrobot/dao/internal/DaoConfig;
.super Ljava/lang/Object;
.source "DaoConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final allColumns:[Ljava/lang/String;

.field public final db:Landroid/database/sqlite/SQLiteDatabase;

.field private identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/identityscope/IdentityScope",
            "<**>;"
        }
    .end annotation
.end field

.field public final keyIsNumeric:Z

.field public final nonPkColumns:[Ljava/lang/String;

.field public final pkColumns:[Ljava/lang/String;

.field public final pkProperty:Lde/greenrobot/dao/Property;

.field public final properties:[Lde/greenrobot/dao/Property;

.field public final statements:Lde/greenrobot/dao/internal/TableStatements;

.field public final tablename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V
    .locals 21
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<+",
            "Lde/greenrobot/dao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lde/greenrobot/dao/AbstractDao<**>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/greenrobot/dao/internal/DaoConfig;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    :try_start_0
    const-string v17, "TABLENAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/greenrobot/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 59
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v17

    check-cast v17, Ljava/lang/reflect/ParameterizedType;

    invoke-interface/range {v17 .. v17}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v6, v17, v18

    check-cast v6, Ljava/lang/Class;

    .line 60
    .local v6, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v6}, Lde/greenrobot/dao/internal/DaoConfig;->reflectProperties(Ljava/lang/Class;)[Lde/greenrobot/dao/Property;

    move-result-object v14

    .line 61
    .local v14, "properties":[Lde/greenrobot/dao/Property;
    move-object/from16 v0, p0

    iput-object v14, v0, Lde/greenrobot/dao/internal/DaoConfig;->properties:[Lde/greenrobot/dao/Property;

    .line 63
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/greenrobot/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    .line 65
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v12, "pkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v10, "nonPkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 68
    .local v8, "lastPkProperty":Lde/greenrobot/dao/Property;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 69
    aget-object v15, v14, v7

    .line 70
    .local v15, "property":Lde/greenrobot/dao/Property;
    iget-object v9, v15, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    .line 71
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v9, v17, v7

    .line 72
    iget-boolean v0, v15, Lde/greenrobot/dao/Property;->primaryKey:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 73
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    move-object v8, v15

    .line 68
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 96
    .end local v6    # "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "i":I
    .end local v8    # "lastPkProperty":Lde/greenrobot/dao/Property;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "nonPkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "pkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "properties":[Lde/greenrobot/dao/Property;
    .end local v15    # "property":Lde/greenrobot/dao/Property;
    :catch_0
    move-exception v5

    .line 97
    .local v5, "e":Ljava/lang/Exception;
    new-instance v17, Lde/greenrobot/dao/DaoException;

    const-string v18, "Could not init DAOConfig"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 79
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "i":I
    .restart local v8    # "lastPkProperty":Lde/greenrobot/dao/Property;
    .restart local v10    # "nonPkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "pkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "properties":[Lde/greenrobot/dao/Property;
    :cond_1
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v11, v0, [Ljava/lang/String;

    .line 80
    .local v11, "nonPkColumnsArray":[Ljava/lang/String;
    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/greenrobot/dao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    .line 81
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    .line 82
    .local v13, "pkColumnsArray":[Ljava/lang/String;
    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/greenrobot/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .end local v8    # "lastPkProperty":Lde/greenrobot/dao/Property;
    :goto_2
    move-object/from16 v0, p0

    iput-object v8, v0, Lde/greenrobot/dao/internal/DaoConfig;->pkProperty:Lde/greenrobot/dao/Property;

    .line 85
    new-instance v17, Lde/greenrobot/dao/internal/TableStatements;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lde/greenrobot/dao/internal/TableStatements;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/greenrobot/dao/internal/DaoConfig;->statements:Lde/greenrobot/dao/internal/TableStatements;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->pkProperty:Lde/greenrobot/dao/Property;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/greenrobot/dao/internal/DaoConfig;->pkProperty:Lde/greenrobot/dao/Property;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lde/greenrobot/dao/Property;->type:Ljava/lang/Class;

    move-object/from16 v16, v0

    .line 89
    .local v16, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-class v17, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-class v17, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    sget-object v17, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-class v17, Ljava/lang/Short;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    sget-object v17, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-class v17, Ljava/lang/Byte;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_2
    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/greenrobot/dao/internal/DaoConfig;->keyIsNumeric:Z

    .line 99
    .end local v16    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    return-void

    .line 84
    .restart local v8    # "lastPkProperty":Lde/greenrobot/dao/Property;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 89
    .end local v8    # "lastPkProperty":Lde/greenrobot/dao/Property;
    .restart local v16    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    .line 93
    .end local v16    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/greenrobot/dao/internal/DaoConfig;->keyIsNumeric:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 1
    .param p1, "source"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->properties:[Lde/greenrobot/dao/Property;

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->properties:[Lde/greenrobot/dao/Property;

    .line 133
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->pkProperty:Lde/greenrobot/dao/Property;

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->pkProperty:Lde/greenrobot/dao/Property;

    .line 137
    iget-object v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->statements:Lde/greenrobot/dao/internal/TableStatements;

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->statements:Lde/greenrobot/dao/internal/TableStatements;

    .line 138
    iget-boolean v0, p1, Lde/greenrobot/dao/internal/DaoConfig;->keyIsNumeric:Z

    iput-boolean v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->keyIsNumeric:Z

    .line 139
    return-void
.end method

.method private static reflectProperties(Ljava/lang/Class;)[Lde/greenrobot/dao/Property;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lde/greenrobot/dao/Property;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "$Properties"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 104
    .local v8, "propertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 106
    .local v3, "fields":[Ljava/lang/reflect/Field;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v10, "propertyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/greenrobot/dao/Property;>;"
    const/16 v6, 0x9

    .line 108
    .local v6, "modifierMask":I
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 110
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    and-int/lit8 v11, v11, 0x9

    const/16 v12, 0x9

    if-ne v11, v12, :cond_0

    .line 111
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    .local v2, "fieldValue":Ljava/lang/Object;
    instance-of v11, v2, Lde/greenrobot/dao/Property;

    if-eqz v11, :cond_0

    .line 113
    check-cast v2, Lde/greenrobot/dao/Property;

    .end local v2    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v7, v11, [Lde/greenrobot/dao/Property;

    .line 119
    .local v7, "properties":[Lde/greenrobot/dao/Property;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lde/greenrobot/dao/Property;

    .line 120
    .local v9, "property":Lde/greenrobot/dao/Property;
    iget v11, v9, Lde/greenrobot/dao/Property;->ordinal:I

    aget-object v11, v7, v11

    if-eqz v11, :cond_2

    .line 121
    new-instance v11, Lde/greenrobot/dao/DaoException;

    const-string v12, "Duplicate property ordinals"

    invoke-direct {v11, v12}, Lde/greenrobot/dao/DaoException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 123
    :cond_2
    iget v11, v9, Lde/greenrobot/dao/Property;->ordinal:I

    aput-object v9, v7, v11

    goto :goto_1

    .line 125
    .end local v9    # "property":Lde/greenrobot/dao/Property;
    :cond_3
    return-object v7
.end method


# virtual methods
.method public clone()Lde/greenrobot/dao/internal/DaoConfig;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, p0}, Lde/greenrobot/dao/internal/DaoConfig;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/identityscope/IdentityScope",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    return-object v0
.end method

.method public initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V
    .locals 3
    .param p1, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;

    .prologue
    .line 157
    sget-object v0, Lde/greenrobot/dao/identityscope/IdentityScopeType;->None:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    if-ne p1, v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    .line 168
    :goto_0
    return-void

    .line 159
    :cond_0
    sget-object v0, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    if-ne p1, v0, :cond_2

    .line 160
    iget-boolean v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->keyIsNumeric:Z

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Lde/greenrobot/dao/identityscope/IdentityScopeLong;

    invoke-direct {v0}, Lde/greenrobot/dao/identityscope/IdentityScopeLong;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Lde/greenrobot/dao/identityscope/IdentityScopeObject;

    invoke-direct {v0}, Lde/greenrobot/dao/identityscope/IdentityScopeObject;-><init>()V

    iput-object v0, p0, Lde/greenrobot/dao/internal/DaoConfig;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/identityscope/IdentityScope",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "identityScope":Lde/greenrobot/dao/identityscope/IdentityScope;, "Lde/greenrobot/dao/identityscope/IdentityScope<**>;"
    iput-object p1, p0, Lde/greenrobot/dao/internal/DaoConfig;->identityScope:Lde/greenrobot/dao/identityscope/IdentityScope;

    .line 153
    return-void
.end method
