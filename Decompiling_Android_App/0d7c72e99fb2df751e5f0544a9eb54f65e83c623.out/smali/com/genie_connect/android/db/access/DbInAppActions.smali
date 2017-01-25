.class public Lcom/genie_connect/android/db/access/DbInAppActions;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbInAppActions.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessGeneric;


# static fields
.field private static final ANDROID:Ljava/lang/String; = "%2%"

.field private static final ANDROID_COMMA:Ljava/lang/String; = "%2,%"

.field private static final COMMA_ANDROID:Ljava/lang/String; = "%,2%"

.field private static final COMMA_ANDROID_COMMA:Ljava/lang/String; = "%,2,%"

.field private static final ENDDATE_FILTER:Ljava/lang/String; = "(endDate IS NULL OR endDate > datetime(\'now\'))"

.field private static final HOTSPOT_IDENTIFIER_FILTER:Ljava/lang/String; = "(hotspots.identifier LIKE ?)"

.field private static final PLATFORM_FILTER:Ljava/lang/String; = "((platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?))"

.field private static final SQL_SELECT_DEFAULT:[Ljava/lang/String;

.field private static final STARTDATE_FILTER:Ljava/lang/String; = "(startDate IS NULL OR startDate < datetime(\'now\'))"


# instance fields
.field private final ENTITY_NAME:Ljava/lang/String;

.field private final ENTITY_NAME_DOT:Ljava/lang/String;

.field private final SQL_SELECT_FULL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "endDate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "httpRequestBody"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "httpRequestMethod"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "httpRequestRetry"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "httpRequestUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intentEntityKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "intentEntityKind"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "intentUri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "platforms"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "repeat"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "startDate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbInAppActions;->SQL_SELECT_DEFAULT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 30
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbInAppActions;->getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    .line 55
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "endDate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "endDate"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "httpRequestBody"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "httpRequestBody"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "httpRequestMethod"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "httpRequestMethod"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "httpRequestRetry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "httpRequestRetry"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "httpRequestUrl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "httpRequestUrl"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "intentEntityKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intentEntityKey"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "intentEntityKind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intentEntityKind"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "intentUri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intentUri"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "platforms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "platforms"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "repeat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "repeat"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "startDate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startDate"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "hotspots.identifier"

    const-string v3, "identifier"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hotspots.name"

    const-string v3, "hotspotName"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "hotspots.id"

    const-string v3, "hotspotId"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbInAppActions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->SQL_SELECT_FULL:[Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAll()Luk/co/alt236/easycursor/EasyCursor;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 78
    iget-object v8, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME:Ljava/lang/String;

    .line 79
    .local v8, "sqlTables":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 80
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v9, "((platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?))"

    .line 81
    .local v9, "sqlWhere":Ljava/lang/String;
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%2%"

    aput-object v2, v3, v1

    const-string v1, "%2,%"

    aput-object v1, v3, v5

    const/4 v1, 0x2

    const-string v2, "%,2,%"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "%,2%"

    aput-object v2, v3, v1

    .line 82
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string v7, "id"

    .line 83
    .local v7, "orderBy":Ljava/lang/String;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 84
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/genie_connect/android/db/access/DbInAppActions;->SQL_SELECT_DEFAULT:[Ljava/lang/String;

    const-string v2, "((platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?))"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbInAppActions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getAllAplicableActionsAndHotspots()Luk/co/alt236/easycursor/EasyCursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 108
    new-instance v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    invoke-direct {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;-><init>()V

    .line 110
    .local v0, "qb":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    iget-object v1, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->SQL_SELECT_FULL:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumns([Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 112
    const-string v1, "hotspots_actions"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addTable(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 113
    const-string v1, "hotspots"

    const-string v2, "(hotspots_actions.hotspots_id = hotspots.id)"

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 114
    const-string v1, "inappactions"

    const-string v2, "(hotspots_actions.actions = inappactions.id)"

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 116
    sget-object v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v2, "((platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?))"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "%,2,%"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "%,2%"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "%2,%"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "%2%"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 121
    sget-object v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v2, "identifier IS NOT NULL"

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 123
    const-string v1, "hotspotId"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 125
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbInAppActions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getApplicableActionsForHotspot(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "hotspotIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 135
    new-instance v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    invoke-direct {v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;-><init>()V

    .line 137
    .local v1, "qb":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    iget-object v2, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->SQL_SELECT_FULL:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumns([Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 139
    const-string v2, "hotspots_actions"

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addTable(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 140
    const-string v2, "hotspots"

    const-string v3, "(hotspots_actions.hotspots_id = hotspots.id)"

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 141
    const-string v2, "inappactions"

    const-string v3, "(hotspots_actions.actions = inappactions.id)"

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 143
    sget-object v2, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v3, "((platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?))"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "%,2,%"

    aput-object v5, v4, v7

    const-string v5, "%,2%"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "%2,%"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "%2%"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 148
    sget-object v2, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v3, "(hotspots.identifier LIKE ?)"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 149
    sget-object v2, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v3, "(startDate IS NULL OR startDate < datetime(\'now\'))"

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 150
    sget-object v2, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v3, "(endDate IS NULL OR endDate > datetime(\'now\'))"

    new-array v4, v7, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 152
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ INAPPACTIONS getApplicableActionsForHotspot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbInAppActions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 156
    .local v0, "ec":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ INAPPACTIONS getApplicableActionsForHotspot returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 157
    return-object v0
.end method

.method public getById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 91
    iget-object v8, p0, Lcom/genie_connect/android/db/access/DbInAppActions;->ENTITY_NAME:Ljava/lang/String;

    .line 92
    .local v8, "sqlTables":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 93
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v9, "id=? AND ((platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?))"

    .line 94
    .local v9, "sqlWhere":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "%,2,%"

    aput-object v1, v3, v5

    const/4 v1, 0x2

    const-string v2, "%,2%"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "%2,%"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "%2%"

    aput-object v2, v3, v1

    .line 99
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string v7, "id"

    .line 100
    .local v7, "orderBy":Ljava/lang/String;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 101
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/genie_connect/android/db/access/DbInAppActions;->SQL_SELECT_DEFAULT:[Ljava/lang/String;

    const-string v2, "id=? AND ((platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?) OR (platforms LIKE ?))"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbInAppActions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getById(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "InAppActions do not have String keys!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INAPPACTION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
