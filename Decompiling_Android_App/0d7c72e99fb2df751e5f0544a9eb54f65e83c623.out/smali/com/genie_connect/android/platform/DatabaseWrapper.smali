.class public Lcom/genie_connect/android/platform/DatabaseWrapper;
.super Ljava/lang/Object;
.source "DatabaseWrapper.java"

# interfaces
.implements Lcom/genie_connect/common/platform/db/IDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/platform/DatabaseWrapper$1;
    }
.end annotation


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/genie_connect/android/platform/DatabaseWrapper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    return-void
.end method

.method private static convertContentValues(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "values"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    .prologue
    .line 55
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/genie_connect/android/platform/DatabaseWrapper$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieContentValues$EntryType:[I

    invoke-virtual {p0, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getEntryType(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues$EntryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 66
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsByte(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_0

    .line 69
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 72
    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 75
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 78
    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 81
    :pswitch_7
    invoke-virtual {p0, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsShort(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_0

    .line 84
    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/genie_connect/common/db/entityfactory/GenieContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_9
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/genie_connect/android/platform/DatabaseWrapper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v2, v1

    .line 106
    :goto_0
    return-wide v2

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no such table"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ DB: Trying to delete a table that does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 106
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 108
    :cond_0
    throw v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/genie_connect/android/platform/DatabaseWrapper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p3}, Lcom/genie_connect/android/platform/DatabaseWrapper;->convertContentValues(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Lcom/genie_connect/common/db/entityfactory/GenieContentValues;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/genie_connect/android/platform/DatabaseWrapper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p3}, Lcom/genie_connect/android/platform/DatabaseWrapper;->convertContentValues(Lcom/genie_connect/common/db/entityfactory/GenieContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method
