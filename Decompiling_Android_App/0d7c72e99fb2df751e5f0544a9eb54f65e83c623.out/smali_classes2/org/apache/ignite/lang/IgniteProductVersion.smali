.class public Lorg/apache/ignite/lang/IgniteProductVersion;
.super Ljava/lang/Object;
.source "IgniteProductVersion.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/lang/IgniteProductVersion;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final VER_PATTERN:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J


# instance fields
.field private maintenance:B

.field private major:B

.field private minor:B

.field private revHash:[B

.field private revTs:J

.field private stage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/lang/IgniteProductVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/lang/IgniteProductVersion;->$assertionsDisabled:Z

    .line 42
    const-string v0, "(\\d+)\\.(\\d+)\\.(\\d+)(-([^0123456789][^-]+)(-SNAPSHOT)?)?(-(\\d+))?(-([\\da-f]+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/lang/IgniteProductVersion;->VER_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(BBBJ[B)V
    .locals 10
    .param p1, "major"    # B
    .param p2, "minor"    # B
    .param p3, "maintenance"    # B
    .param p4, "revTs"    # J
    .param p6, "revHash"    # [B

    .prologue
    .line 78
    const-string v5, ""

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/lang/IgniteProductVersion;-><init>(BBBLjava/lang/String;J[B)V

    .line 79
    return-void
.end method

.method public constructor <init>(BBBLjava/lang/String;J[B)V
    .locals 3
    .param p1, "major"    # B
    .param p2, "minor"    # B
    .param p3, "maintenance"    # B
    .param p4, "stage"    # Ljava/lang/String;
    .param p5, "revTs"    # J
    .param p7, "revHash"    # [B

    .prologue
    const/16 v1, 0x14

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p7, :cond_0

    array-length v0, p7

    if-eq v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length for SHA1 hash (must be 20): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-byte p1, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    .line 94
    iput-byte p2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    .line 95
    iput-byte p3, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    .line 96
    iput-object p4, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->stage:Ljava/lang/String;

    .line 97
    iput-wide p5, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    .line 98
    if-eqz p7, :cond_1

    .end local p7    # "revHash":[B
    :goto_0
    iput-object p7, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revHash:[B

    .line 99
    return-void

    .line 98
    .restart local p7    # "revHash":[B
    :cond_1
    new-array p7, v1, [B

    goto :goto_0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteProductVersion;
    .locals 12
    .param p0, "verStr"    # Ljava/lang/String;

    .prologue
    .line 258
    sget-boolean v1, Lorg/apache/ignite/lang/IgniteProductVersion;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 260
    :cond_0
    const-string v1, "-DEV"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-n/a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {p0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 263
    :cond_2
    sget-object v1, Lorg/apache/ignite/lang/IgniteProductVersion;->VER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 265
    .local v9, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 267
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    .line 268
    .local v2, "major":B
    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    .line 269
    .local v3, "minor":B
    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    .line 271
    .local v4, "maintenance":B
    const-string v5, ""

    .line 273
    .local v5, "stage":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 274
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 276
    :cond_3
    const-wide/16 v6, 0x0

    .line 278
    .local v6, "revTs":J
    const/4 v1, 0x7

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 279
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 281
    :cond_4
    const/4 v8, 0x0

    .line 283
    .local v8, "revHash":[B
    const/16 v1, 0x9

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 284
    const/16 v1, 0xa

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->decodeHex([C)[B

    move-result-object v8

    .line 286
    :cond_5
    new-instance v1, Lorg/apache/ignite/lang/IgniteProductVersion;

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/lang/IgniteProductVersion;-><init>(BBBLjava/lang/String;J[B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 288
    .end local v2    # "major":B
    .end local v3    # "minor":B
    .end local v4    # "maintenance":B
    .end local v5    # "stage":Ljava/lang/String;
    .end local v6    # "revTs":J
    .end local v8    # "revHash":[B
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lorg/apache/ignite/lang/IgniteProductVersion;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/lang/IgniteProductVersion;->compareTo(Lorg/apache/ignite/lang/IgniteProductVersion;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/lang/IgniteProductVersion;)I
    .locals 6
    .param p1, "o"    # Lorg/apache/ignite/lang/IgniteProductVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 179
    iget-byte v1, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    iget-byte v2, p1, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 181
    .local v0, "res":I
    if-eqz v0, :cond_0

    move v1, v0

    .line 194
    :goto_0
    return v1

    .line 184
    :cond_0
    iget-byte v1, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    iget-byte v2, p1, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 186
    if-eqz v0, :cond_1

    move v1, v0

    .line 187
    goto :goto_0

    .line 189
    :cond_1
    iget-byte v1, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    iget-byte v2, p1, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 191
    if-eqz v0, :cond_2

    move v1, v0

    .line 192
    goto :goto_0

    .line 194
    :cond_2
    iget-wide v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    iget-wide v4, p1, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    if-ne p0, p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 202
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/lang/IgniteProductVersion;

    if-nez v3, :cond_2

    move v1, v2

    .line 203
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 205
    check-cast v0, Lorg/apache/ignite/lang/IgniteProductVersion;

    .line 207
    .local v0, "that":Lorg/apache/ignite/lang/IgniteProductVersion;
    iget-wide v4, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    iget-wide v6, v0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-byte v3, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    iget-byte v4, v0, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    if-ne v3, v4, :cond_3

    iget-byte v3, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    iget-byte v4, v0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    if-ne v3, v4, :cond_3

    iget-byte v3, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    iget-byte v4, v0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public greaterThanEqual(III)Z
    .locals 3
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "maintenance"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    iget-byte v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    if-ne p1, v2, :cond_3

    .line 171
    iget-byte v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    if-ne p2, v2, :cond_2

    iget-byte v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    if-lt v2, p3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 171
    goto :goto_0

    :cond_2
    iget-byte v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    if-gt v2, p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 173
    :cond_3
    iget-byte v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    if-gt v2, p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 212
    iget-byte v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    .line 214
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    add-int v0, v1, v2

    .line 215
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    add-int v0, v1, v2

    .line 216
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    iget-wide v4, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 218
    return v0
.end method

.method public maintenance()B
    .locals 1

    .prologue
    .line 125
    iget-byte v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    return v0
.end method

.method public major()B
    .locals 1

    .prologue
    .line 107
    iget-byte v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    return v0
.end method

.method public minor()B
    .locals 1

    .prologue
    .line 116
    iget-byte v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    .line 233
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    .line 234
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    .line 235
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    .line 236
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revHash:[B

    .line 237
    return-void
.end method

.method public releaseDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public revisionHash()[B
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revHash:[B

    return-object v0
.end method

.method public revisionTimestamp()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    return-wide v0
.end method

.method public stage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->stage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 241
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "revTsStr":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revHash:[B

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->byteArray2HexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "hash":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v3, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-sha1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-byte v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->major:B

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 224
    iget-byte v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->minor:B

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 225
    iget-byte v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->maintenance:B

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 226
    iget-wide v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revTs:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 227
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteProductVersion;->revHash:[B

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 228
    return-void
.end method
