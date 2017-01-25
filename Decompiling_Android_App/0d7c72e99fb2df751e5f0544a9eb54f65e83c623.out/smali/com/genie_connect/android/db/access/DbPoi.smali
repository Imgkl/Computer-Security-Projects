.class public final Lcom/genie_connect/android/db/access/DbPoi;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbPoi.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessGeneric;
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessCountry;


# instance fields
.field private final ENTITY_NAME:Ljava/lang/String;

.field private final ENTITY_NAME_DOT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 54
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbPoi;->getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private getPois(Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;ZZ)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p1, "poiId"    # Ljava/lang/Long;
    .param p2, "tagId"    # Ljava/lang/Long;
    .param p3, "nullCategory"    # Z
    .param p4, "countryFilter"    # Ljava/lang/String;
    .param p5, "nullCountry"    # Z
    .param p6, "favorite"    # Z

    .prologue
    .line 181
    const/16 v4, 0xe

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "name"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "name"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "fullDescription"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "fullDescription"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "thumbUrl"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "thumbUrl"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address1"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address2"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address3"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "country"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0x9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "county"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "postCode"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "town"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0xc

    const-string v5, "f.poi IS NOT NULL isFavourite"

    aput-object v5, v8, v4

    const/16 v4, 0xd

    const-string v5, "n.relatedPoi IS NOT NULL hasNote"

    aput-object v5, v8, v4

    .line 198
    .local v8, "sqlSelectSummary":[Ljava/lang/String;
    const/16 v4, 0x1a

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "name"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "name"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "email"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "email"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "fax"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "fax"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "telephone"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "telephone"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "www"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "www"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "blogUrl"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "blogUrl"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "facebook"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "facebook"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "twitter"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "twitter"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "twitter"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "twitter"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "linkedIn"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "linkedIn"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0xc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "youtubeUrl"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "contact"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "youtubeUrl"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0xd

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "shareUrl"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "shareUrl"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0xe

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "fullDescription"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "fullDescription"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0xf

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "thumbUrl"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "thumbUrl"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address1"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address2"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address3"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "country"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "county"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "postCode"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "address"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "town"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "relatedTags"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/16 v4, 0x18

    const-string v5, "f.poi IS NOT NULL isFavourite"

    aput-object v5, v7, v4

    const/16 v4, 0x19

    const-string v5, "n.relatedPoi IS NOT NULL hasNote"

    aput-object v5, v7, v4

    .line 228
    .local v7, "sqlSelectDetail":[Ljava/lang/String;
    if-nez p1, :cond_6

    move-object v1, v8

    .line 230
    .local v1, "sqlSelect":[Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LEFT OUTER JOIN favouritepoi f ON (poi.id = f.poi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbPoi;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LEFT OUTER JOIN notes n ON (poi.id = n.relatedPoi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbPoi;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 235
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 237
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    if-eqz p6, :cond_0

    .line 238
    const-string v2, "f.poi IS NOT NULL"

    .line 240
    :cond_0
    if-eqz p1, :cond_1

    .line 241
    const-string v2, "poi.id=?"

    .line 242
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .end local v3    # "sqlWhereArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 250
    .restart local v3    # "sqlWhereArgs":[Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LEFT OUTER JOIN poi_relatedtags c ON (poi.id = c.poi_id)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 252
    const-string v2, "c.relatedtags=?"

    .line 253
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .end local v3    # "sqlWhereArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 255
    .restart local v3    # "sqlWhereArgs":[Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_3

    .line 256
    const-string v2, "categories IS NULL"

    .line 258
    :cond_3
    if-eqz p4, :cond_4

    .line 259
    const-string v2, "address_country=?"

    .line 260
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .end local v3    # "sqlWhereArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object p4, v3, v4

    .line 262
    .restart local v3    # "sqlWhereArgs":[Ljava/lang/String;
    :cond_4
    if-eqz p5, :cond_5

    .line 263
    const-string v2, "address_country IS NULL"

    .line 266
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/genie_connect/android/db/access/DbPoi;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 269
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 270
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 271
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbPoi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4

    .end local v0    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v1    # "sqlSelect":[Ljava/lang/String;
    .end local v2    # "sqlWhere":Ljava/lang/String;
    .end local v3    # "sqlWhereArgs":[Ljava/lang/String;
    .end local v6    # "orderBy":Ljava/lang/String;
    .end local v9    # "sqlTables":Ljava/lang/String;
    :cond_6
    move-object v1, v7

    .line 228
    goto/16 :goto_0
.end method

.method private search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 10
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;I)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v9, 0x1

    .line 301
    invoke-static {p2}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->getSelectedTagsListFromTree(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/util/List;

    move-result-object v3

    .line 302
    .local v3, "tagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    :cond_0
    new-instance v0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    iget-object v4, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME:Ljava/lang/String;

    invoke-direct {v0, v4, p2}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;-><init>(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    .line 305
    .local v0, "builder":Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    invoke-virtual {v0, p3}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->setLimit(I)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "groupById"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fullDescription"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "fullDescription"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "thumbUrl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "thumbUrl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "country"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "county"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "postCode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "town"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "town"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 322
    const-string v4, "f.poi IS NOT NULL isFavourite"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 323
    const-string v4, "n.relatedPoi IS NOT NULL hasNote"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEFT OUTER JOIN favouritepoi AS f ON (poi.id = f.poi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbPoi;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEFT OUTER JOIN notes AS n ON (poi.id = n.relatedPoi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbPoi;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 327
    const-string v4, "LEFT OUTER JOIN poi_relatedtags AS d ON poi.id = d.poi_id"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 328
    const-string v4, "LEFT OUTER JOIN tagsv2 AS x ON d.relatedTags = x.id"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/genie_connect/android/db/access/DbPoi;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 331
    invoke-virtual {v0, v9}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->setDistinct(Z)V

    .line 332
    const-string v4, "groupById"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addGroupBy(Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 335
    const-string v4, "poi.name like ? OR poi.fullDescription like ? OR poi.address_country like ? OR poi.address_town like ?"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->buildWhereStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSearchTerm(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 346
    :cond_1
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->build()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "rawQuery":Ljava/lang/String;
    new-instance v4, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    invoke-direct {v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;-><init>()V

    invoke-virtual {v4, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setRawSql(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    .line 351
    .local v1, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbPoi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 354
    .end local v0    # "builder":Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    .end local v1    # "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    .end local v2    # "rawQuery":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAll()Luk/co/alt236/easycursor/EasyCursor;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 63
    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/genie_connect/android/db/access/DbPoi;->getPois(Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;ZZ)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getByCountry(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 7
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/genie_connect/android/db/access/DbPoi;->getPois(Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;ZZ)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move-object v2, v1

    move-object v4, p1

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/genie_connect/android/db/access/DbPoi;->getPois(Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;ZZ)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 87
    const/16 v2, 0x19

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AS "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AS "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "contact_email"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "contact_fax"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "contact_telephone"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "contact_www"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "contact_blogUrl"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "contact_facebook"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string v5, "contact_linkedIn"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string v5, "contact_telephone2"

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-string v5, "contact_twitter"

    aput-object v5, v1, v2

    const/16 v2, 0xc

    const-string v5, "contact_youtubeUrl"

    aput-object v5, v1, v2

    const/16 v2, 0xd

    const-string v5, "address_address1"

    aput-object v5, v1, v2

    const/16 v2, 0xe

    const-string v5, "address_address2"

    aput-object v5, v1, v2

    const/16 v2, 0xf

    const-string v5, "address_address3"

    aput-object v5, v1, v2

    const/16 v2, 0x10

    const-string v5, "address_country"

    aput-object v5, v1, v2

    const/16 v2, 0x11

    const-string v5, "address_county"

    aput-object v5, v1, v2

    const/16 v2, 0x12

    const-string v5, "address_postCode"

    aput-object v5, v1, v2

    const/16 v2, 0x13

    const-string v5, "address_town"

    aput-object v5, v1, v2

    const/16 v2, 0x14

    const-string v5, "fullDescription"

    aput-object v5, v1, v2

    const/16 v2, 0x15

    const-string v5, "shareUrl"

    aput-object v5, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v5, "thumbUrl"

    aput-object v5, v1, v2

    const/16 v2, 0x17

    const-string v5, "f.poi IS NOT NULL isFavourite"

    aput-object v5, v1, v2

    const/16 v2, 0x18

    const-string v5, "n.relatedPoi IS NOT NULL hasNote"

    aput-object v5, v1, v2

    .line 115
    .local v1, "sqlSelectDetail":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LEFT OUTER JOIN favouritepoi f ON (poi.id = f.poi "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "f"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbPoi;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LEFT OUTER JOIN notes n ON (poi.id = n.relatedPoi "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbPoi;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "poi.id=?"

    .line 120
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v10

    .line 122
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 123
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 124
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 125
    const-string v2, "poi.id=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbPoi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getById(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "POIs do not have String keys!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCountries()Luk/co/alt236/easycursor/EasyCursor;
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbPoi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/db/access/CommonQueries;->getCountries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getFavouritePois()Luk/co/alt236/easycursor/EasyCursor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 67
    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/genie_connect/android/db/access/DbPoi;->getPois(Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;ZZ)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getPoisByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 130
    const/4 v5, 0x5

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id AS _id"

    aput-object v6, v1, v5

    const-string v5, "id"

    aput-object v5, v1, v9

    const/4 v5, 0x2

    const-string v6, "fullDescription"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "shareUrl"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "thumbUrl"

    aput-object v6, v1, v5

    .line 138
    .local v1, "sqlSelectSummary":[Ljava/lang/String;
    iget-object v8, p0, Lcom/genie_connect/android/db/access/DbPoi;->ENTITY_NAME:Ljava/lang/String;

    .line 140
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v2, "id=?"

    .line 141
    .local v2, "where":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v7, v5, :cond_0

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR id=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 146
    .local v3, "idsAsStrings":[Ljava/lang/String;
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v7, v5, :cond_1

    .line 147
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 146
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 150
    :cond_1
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 151
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 152
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    move-object v5, v4

    move-object v6, v4

    .line 153
    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbPoi;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 7
    .param p1, "tagId"    # Ljava/lang/Long;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 282
    move-object v0, p0

    move-object v2, p1

    move-object v4, v1

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/genie_connect/android/db/access/DbPoi;->getPois(Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;ZZ)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/db/access/DbPoi;->search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/genie_connect/android/db/access/DbPoi;->search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/db/access/DbPoi;->search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
