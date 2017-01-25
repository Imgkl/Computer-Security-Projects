.class public Lcom/genie_connect/android/db/DbHelper;
.super Ljava/lang/Object;
.source "DbHelper.java"


# static fields
.field private static final mDebugEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/genie_connect/android/db/DbHelper;->mDebugEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_0
    return-void
.end method

.method public static cursorColumnToList(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    .line 69
    .local v2, "hasData":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 70
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "colValue":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    goto :goto_0

    .line 75
    .end local v1    # "colValue":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    :cond_0
    return-void
.end method

.method public static getBooleanFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, "columnNo":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 102
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getDebugLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/genie_connect/android/db/DbHelper;->mDebugEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ getBooleanFromCursor(): Column \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getIntegerFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "columnNo":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 123
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getDebugLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/genie_connect/android/db/DbHelper;->mDebugEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ getIntegerFromCursor(): Column \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 126
    :cond_0
    const/4 v1, 0x0

    .line 128
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "columnNo":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 144
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getDebugLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/genie_connect/android/db/DbHelper;->mDebugEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ getLongFromCursor(): Column \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 147
    :cond_0
    const/4 v1, 0x0

    .line 149
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 164
    .local v0, "columnNo":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 165
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getDebugLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/genie_connect/android/db/DbHelper;->mDebugEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ getStringFromCursor(): Column \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 168
    :cond_0
    const/4 v1, 0x0

    .line 170
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static has(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 181
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 184
    :cond_1
    return v0
.end method

.method public static isDbLockedByOtherThreads(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v0

    return v0
.end method

.method public static logFullCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 9
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v8, 0x2c

    const/16 v7, 0xa

    const/16 v6, 0x22

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 212
    .local v3, "rows":I
    invoke-static {}, Lcom/eventgenie/android/utils/Log;->getDebugLogStatus()Z

    move-result v5

    if-nez v5, :cond_1

    .line 213
    const-string v5, "LOGGING DISABLED - Will not dump cursor!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DB DUMP - Total rows = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 215
    :cond_1
    if-nez p0, :cond_2

    .line 216
    const-string v5, "Cursor is NULL!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 218
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_7

    .line 219
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 221
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "cols":[Ljava/lang/String;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 224
    .local v1, "columnsQty":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 225
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_3

    .line 230
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 237
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_6

    .line 238
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_5

    .line 243
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 247
    :cond_6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 251
    .end local v0    # "cols":[Ljava/lang/String;
    .end local v1    # "columnsQty":I
    .end local v2    # "idx":I
    :cond_7
    const-string v5, "Cursor after last!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static varargs replaceQuestionMarksWithArgs(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "queryArgs"    # [Ljava/lang/String;

    .prologue
    .line 261
    const-string v6, "?"

    invoke-static {p0, v6}, Lcom/genie_connect/android/utils/string/StringUtils;->countMatches(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    array-length v7, p1

    if-eq v6, v7, :cond_0

    .line 262
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "The number of \'?\' in the query are different than the number of arguements!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 265
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 267
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 269
    .local v1, "arrayIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-char v2, v0, v3

    .line 270
    .local v2, "c":C
    const/16 v6, 0x3f

    if-ne v2, v6, :cond_1

    .line 271
    aget-object v6, p1, v1

    invoke-static {v6}, Lcom/genie_connect/android/db/DbHelper;->sanitiseSqlParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    add-int/lit8 v1, v1, 0x1

    .line 269
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 278
    .end local v2    # "c":C
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static requery(Landroid/database/Cursor;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 291
    if-eqz p0, :cond_0

    .line 292
    invoke-interface {p0}, Landroid/database/Cursor;->requery()Z

    .line 294
    :cond_0
    return-void
.end method

.method public static sanitiseSqlParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sqlString"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x27

    .line 299
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xf

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 301
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 304
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 305
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 306
    .local v0, "c":C
    if-ne v0, v7, :cond_0

    .line 307
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .local v3, "methodResult":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 317
    .end local v3    # "methodResult":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    .restart local v3    # "methodResult":Ljava/lang/String;
    goto :goto_1
.end method
