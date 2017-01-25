.class public abstract Lcom/genie_connect/android/db/access/BaseDb;
.super Ljava/lang/Object;
.source "BaseDb.java"

# interfaces
.implements Lcom/genie_connect/common/db/DatabaseSymbolConstants;


# static fields
.field protected static final AFTER_NOW:Ljava/lang/String; = " > datetime(\'now\')"

.field protected static final AND:Ljava/lang/String; = " AND "

.field protected static final AS:Ljava/lang/String; = " AS "

.field protected static final BEFORE_NOW:Ljava/lang/String; = " < datetime(\'now\')"

.field private static final DEFAULT_COLLATION:Ljava/lang/String; = " COLLATE LOCALIZED ASC"

.field protected static final HAS_NOTE:Ljava/lang/String; = "hasNote"

.field protected static final IS:Ljava/lang/String; = " IS "

.field protected static final IS_BOOKMARKED:Ljava/lang/String; = "isBookmarked"

.field protected static final IS_FAVOURITE:Ljava/lang/String; = "isFavourite"

.field protected static final IS_NOT_NULL:Ljava/lang/String; = " IS NOT NULL"

.field protected static final IS_NULL:Ljava/lang/String; = " IS NULL"

.field protected static final LEFT_OUTER_JOIN:Ljava/lang/String; = " LEFT OUTER JOIN "

.field protected static final LIKE:Ljava/lang/String; = " LIKE "

.field protected static final NOW:Ljava/lang/String; = " date(\'now\')"

.field protected static final ON:Ljava/lang/String; = " ON "

.field protected static final OR:Ljava/lang/String; = " OR "

.field protected static final SEQ_NO:Ljava/lang/String; = "seqNo"

.field public static final SUBSTRING_DEFAULT_LENGTH:I = 0x96

.field protected static final WHERE:Ljava/lang/String; = " WHERE "

.field protected static final _ID:Ljava/lang/String; = "_id"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/genie_connect/android/db/access/BaseDb;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/genie_connect/android/db/access/BaseDb;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 76
    return-void
.end method

.method protected static alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEventFavCriteriaSQL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "namespace":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "._namespace = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "._namespace IS NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static getIfNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "fallback"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ifnull("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getStringCollation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, " COLLATE LOCALIZED ASC"

    return-object v0
.end method

.method protected static getStringCollationNoCase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "COLLATE NOCASE"

    return-object v0
.end method

.method protected static getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 207
    const/16 v0, 0x96

    invoke-static {p0, p1, v0}, Lcom/genie_connect/android/db/access/BaseDb;->getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "SUBSTR("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ",0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ")||\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    if-eqz p1, :cond_0

    .line 221
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static leftOuterJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "otherTable"    # Ljava/lang/String;
    .param p1, "thisTableField"    # Ljava/lang/String;
    .param p2, "otherTableField"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeStringFromArray([Ljava/lang/Long;)Ljava/lang/String;
    .locals 3
    .param p0, "items"    # [Ljava/lang/Long;

    .prologue
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, p0

    if-lez v2, :cond_1

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 231
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .end local v0    # "i":I
    :goto_1
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method


# virtual methods
.method protected appendPermissionsCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sqlWhere"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/BaseDb;->generatePermissionsCheckWhere()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "permissionsCheck":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    if-eqz p1, :cond_1

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_0
    :goto_0
    return-object p1

    .line 85
    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method protected generatePermissionsCheckWhere()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    iget-object v2, p0, Lcom/genie_connect/android/db/access/BaseDb;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "generatePermissionsCheckWhere: Context is null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getNotAllowedGroupsForView()[Ljava/lang/Long;

    move-result-object v0

    .line 99
    .local v0, "cannotView":[Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, "permissionGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v2, " NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {v0}, Lcom/genie_connect/android/db/access/BaseDb;->makeStringFromArray([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, ") OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v2, "permissionGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v2, " IS NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method protected getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/genie_connect/android/db/access/BaseDb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/BaseDb;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/genie_connect/android/db/access/BaseDb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDb()Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/genie_connect/android/db/access/BaseDb;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method protected getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/BaseDb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/db/access/BaseDb;->getEventFavCriteriaSQL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/BaseDb;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
.end method

.method protected getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/BaseDb;->getDb()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected getWriteableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/BaseDb;->getDb()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
