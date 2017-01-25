.class public abstract Lcom/urbanairship/util/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# static fields
.field private static final MAX_ATTEMPTS:I = 0x3


# instance fields
.field private openHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/urbanairship/util/DataManager$1;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/urbanairship/util/DataManager$1;-><init>(Lcom/urbanairship/util/DataManager;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/urbanairship/util/DataManager;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 77
    return-void
.end method

.method private tryExecuteStatement(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)Z
    .locals 3
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 444
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 446
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 447
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/util/DataManager;->bindValuesToSqlLiteStatment(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V

    .line 448
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    const/4 v2, 0x1

    .line 455
    :goto_1
    return v2

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Unable to insert into database"

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected bind(Landroid/database/sqlite/SQLiteStatement;II)V
    .locals 2
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 208
    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 209
    return-void
.end method

.method protected bind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;)V
    .locals 2
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 219
    if-nez p3, :cond_0

    .line 220
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_1
    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected bind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Boolean;
    .param p4, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 235
    if-nez p3, :cond_0

    .line 236
    invoke-virtual {p0, p1, p2, p4}, Lcom/urbanairship/util/DataManager;->bind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/urbanairship/util/DataManager;->bind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Boolean;)V

    goto :goto_0
.end method

.method protected bind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 250
    if-nez p3, :cond_0

    .line 251
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected bind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 266
    if-nez p3, :cond_0

    .line 267
    invoke-virtual {p0, p1, p2, p4}, Lcom/urbanairship/util/DataManager;->bind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/urbanairship/util/DataManager;->bind(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract bindValuesToSqlLiteStatment(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)V
.end method

.method protected varargs buildInsertStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;

    .prologue
    const/16 v4, 0x80

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 177
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "INSERT INTO "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v2, "sbv":Ljava/lang/StringBuilder;
    const-string v3, "VALUES ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 185
    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_0

    const-string v3, ") "

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    const-string v3, ");"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    const-string v3, ", "

    goto :goto_1

    .line 192
    :cond_1
    const-string v3, ", "

    goto :goto_2

    .line 195
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public bulkInsert(Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/util/List;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/urbanairship/util/DataManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 314
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v4, "inserted":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v1, :cond_0

    .line 340
    :goto_0
    return-object v4

    .line 319
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 320
    invoke-virtual {p0, p1, v1}, Lcom/urbanairship/util/DataManager;->getInsertStatement(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 323
    .local v6, "statement":Landroid/database/sqlite/SQLiteStatement;
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/ContentValues;
    :try_start_0
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v7, v0, v3

    .line 324
    .local v7, "value":Landroid/content/ContentValues;
    invoke-direct {p0, v6, v7}, Lcom/urbanairship/util/DataManager;->tryExecuteStatement(Landroid/database/sqlite/SQLiteStatement;Landroid/content/ContentValues;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 325
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 329
    .end local v7    # "value":Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 330
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 334
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v2

    .line 335
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "Unable to insert into database"

    invoke-static {v8, v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method

.method public close()V
    .locals 2

    .prologue
    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/util/DataManager;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Failed to close the database."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 285
    if-nez p2, :cond_0

    .line 286
    const-string p2, "1"

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/util/DataManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 290
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_2

    .line 302
    :cond_1
    :goto_0
    return v3

    .line 294
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 296
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "Unable to delete item from a database"

    invoke-static {v4, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected abstract getInsertStatement(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
.end method

.method protected getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/util/DataManager;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 142
    :goto_1
    return-object v2

    .line 133
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 138
    const-string v2, "DataManager - Error opening readable database. Retrying..."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/util/DataManager;->openHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 121
    :goto_1
    return-object v2

    .line 112
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 117
    const-string v2, "DataManager - Error opening writable database. Retrying..."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/util/DataManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 359
    :goto_1
    return-wide v2

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Unable to insert into database"

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method protected abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method protected onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 164
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Unable to downgrade database"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 153
    const-string v0, "DataManager - onUpgrade not implemented yet."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/urbanairship/util/DataManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/urbanairship/util/DataManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 406
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 407
    const/4 v1, 0x0

    .line 419
    :goto_0
    return-object v1

    .line 410
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v10, v1, :cond_1

    .line 412
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    :try_start_0
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 414
    :catch_0
    move-exception v9

    .line 415
    .local v9, "e":Landroid/database/SQLException;
    const-string v1, "Query Failed"

    invoke-static {v1, v9}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 410
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 419
    .end local v9    # "e":Landroid/database/SQLException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 373
    invoke-virtual {p0}, Lcom/urbanairship/util/DataManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 374
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v3

    .line 378
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 380
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Landroid/database/SQLException;
    const-string v4, "Update Failed"

    invoke-static {v4, v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
