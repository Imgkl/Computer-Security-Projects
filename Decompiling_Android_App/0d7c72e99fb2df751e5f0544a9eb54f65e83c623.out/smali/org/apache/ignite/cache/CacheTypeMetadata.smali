.class public Lorg/apache/ignite/cache/CacheTypeMetadata;
.super Ljava/lang/Object;
.source "CacheTypeMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private ascFlds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private dbSchema:Ljava/lang/String;

.field private dbTbl:Ljava/lang/String;

.field private descFlds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private grps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private keyFields:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private keyType:Ljava/lang/String;

.field private qryFlds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private txtFlds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private valFields:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private valType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->keyFields:Ljava/util/Collection;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->valFields:Ljava/util/Collection;

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->qryFlds:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->ascFlds:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->descFlds:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->txtFlds:Ljava/util/Collection;

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->grps:Ljava/util/Map;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/cache/CacheTypeMetadata;)V
    .locals 2
    .param p1, "src"    # Lorg/apache/ignite/cache/CacheTypeMetadata;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getDatabaseSchema()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->dbSchema:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getDatabaseTable()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->dbTbl:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->keyType:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->valType:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getKeyFields()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->keyFields:Ljava/util/Collection;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getValueFields()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->valFields:Ljava/util/Collection;

    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getQueryFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->qryFlds:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getAscendingFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->ascFlds:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getDescendingFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->descFlds:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getTextFields()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->txtFlds:Ljava/util/Collection;

    .line 117
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/apache/ignite/cache/CacheTypeMetadata;->getGroups()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->grps:Ljava/util/Map;

    .line 118
    return-void
.end method


# virtual methods
.method public getAscendingFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->ascFlds:Ljava/util/Map;

    return-object v0
.end method

.method public getDatabaseSchema()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->dbSchema:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->dbTbl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescendingFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->descFlds:Ljava/util/Map;

    return-object v0
.end method

.method public getGroups()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->grps:Ljava/util/Map;

    return-object v0
.end method

.method public getKeyFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->keyFields:Ljava/util/Collection;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->qryFlds:Ljava/util/Map;

    return-object v0
.end method

.method public getTextFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->txtFlds:Ljava/util/Collection;

    return-object v0
.end method

.method public getValueFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->valFields:Ljava/util/Collection;

    return-object v0
.end method

.method public getValueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->valType:Ljava/lang/String;

    return-object v0
.end method

.method public setAscendingFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "ascFlds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->ascFlds:Ljava/util/Map;

    .line 280
    return-void
.end method

.method public setDatabaseSchema(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbSchema"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->dbSchema:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setDatabaseTable(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbTbl"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->dbTbl:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setDescendingFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "descFlds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->descFlds:Ljava/util/Map;

    .line 298
    return-void
.end method

.method public setGroups(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "grps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->grps:Ljava/util/Map;

    .line 334
    return-void
.end method

.method public setKeyFields(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "keyFields":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeFieldMetadata;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->keyFields:Ljava/util/Collection;

    .line 226
    return-void
.end method

.method public setKeyType(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->setKeyType(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setKeyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyType"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->keyType:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setQueryFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "qryFlds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->qryFlds:Ljava/util/Map;

    .line 262
    return-void
.end method

.method public setTextFields(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "txtFlds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->txtFlds:Ljava/util/Collection;

    .line 316
    return-void
.end method

.method public setValueFields(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cache/CacheTypeFieldMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "valFields":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cache/CacheTypeFieldMetadata;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->valFields:Ljava/util/Collection;

    .line 244
    return-void
.end method

.method public setValueType(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/cache/CacheTypeMetadata;->setValueType(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public setValueType(Ljava/lang/String;)V
    .locals 0
    .param p1, "valType"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/apache/ignite/cache/CacheTypeMetadata;->valType:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    const-class v0, Lorg/apache/ignite/cache/CacheTypeMetadata;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
