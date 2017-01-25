.class public Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;
.super Landroid/database/CursorWrapper;
.source "EasySqlCursor.java"

# interfaces
.implements Luk/co/alt236/easycursor/EasyCursor;


# static fields
.field private static final COLUMN_NOT_PRESENT:I = -0x1

.field public static final DEFAULT_BOOLEAN:Z = false

.field public static final DEFAULT_DOUBLE:D = 0.0

.field public static final DEFAULT_FLOAT:F = 0.0f

.field public static final DEFAULT_INT:I = 0x0

.field public static final DEFAULT_LONG:J = 0x0L

.field public static final DEFAULT_STRING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EasyCursor"


# instance fields
.field private mDebugEnabled:Z

.field private final mModel:Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->DEFAULT_STRING:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/database/Cursor;Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "model"    # Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 36
    iput-object p2, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->mModel:Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    .line 37
    return-void
.end method

.method public constructor <init>(Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;)V
    .locals 1
    .param p1, "cursor"    # Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    .prologue
    .line 48
    invoke-virtual {p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getQueryModel()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected calcBoolean(I)Z
    .locals 2
    .param p1, "columnNumber"    # I

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getInt(I)I

    move-result v0

    .line 62
    .local v0, "value":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBlob(Ljava/lang/String;)[B
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "columnNumber":I
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->calcBoolean(I)Z

    move-result v1

    return v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getQueryModel()Luk/co/alt236/easycursor/EasyQueryModel;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getQueryModel()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v0

    return-object v0
.end method

.method public getQueryModel()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->mModel:Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isColumnPresent(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "columnNo"    # I

    .prologue
    .line 143
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 144
    iget-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->mDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "EasyCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Column \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not present in Cursor - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->mDebugEnabled:Z

    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fallback"    # Z

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->calcBoolean(I)Z

    move-result p2

    .line 193
    .end local p2    # "fallback":Z
    :cond_0
    return p2
.end method

.method public optBooleanAsWrapperType(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->calcBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 215
    :goto_0
    return-object v1

    .line 213
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 215
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 228
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fallback"    # D

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 238
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getDouble(I)D

    move-result-wide p2

    .line 241
    .end local p2    # "fallback":D
    :cond_0
    return-wide p2
.end method

.method public optDoubleAsWrapperType(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 252
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public optFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fallback"    # F

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 277
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getFloat(I)F

    move-result p2

    .line 280
    .end local p2    # "fallback":F
    :cond_0
    return p2
.end method

.method public optFloatAsWrapperType(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 291
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fallback"    # I

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getInt(I)I

    move-result p2

    .line 319
    .end local p2    # "fallback":I
    :cond_0
    return p2
.end method

.method public optIntAsWrapperType(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 330
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 333
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 345
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fallback"    # J

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 355
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getLong(I)J

    move-result-wide p2

    .line 358
    .end local p2    # "fallback":J
    :cond_0
    return-wide p2
.end method

.method public optLongAsWrapperType(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 369
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 372
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 385
    sget-object v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->DEFAULT_STRING:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 395
    .local v0, "columnNo":I
    invoke-virtual {p0, p1, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isColumnPresent(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p0, v0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 398
    .end local p2    # "fallback":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public setDebugEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 403
    iput-boolean p1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->mDebugEnabled:Z

    .line 404
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EasyCursor [mModel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->mModel:Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 409
    iget-boolean v1, p0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->mDebugEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isClosed()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->isClosed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 410
    const-string v1, ", getCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getColumnCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getColumnNames()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getPosition()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    invoke-virtual {p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
