.class public final Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;
.super Ljava/lang/Object;
.source "UnicodeBOMInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BOM"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NONE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

.field public static final UTF_16_BE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

.field public static final UTF_16_LE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

.field public static final UTF_32_BE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

.field public static final UTF_32_LE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

.field public static final UTF_8:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;


# instance fields
.field final bytes:[B

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 261
    const-class v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->$assertionsDisabled:Z

    .line 266
    new-instance v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    new-array v1, v1, [B

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->NONE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    .line 271
    new-instance v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->UTF_8:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    .line 279
    new-instance v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "UTF-16 little-endian"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->UTF_16_LE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    .line 286
    new-instance v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const-string v2, "UTF-16 big-endian"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->UTF_16_BE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    .line 293
    new-instance v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    new-array v1, v4, [B

    fill-array-data v1, :array_3

    const-string v2, "UTF-32 little-endian"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->UTF_32_LE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    .line 302
    new-instance v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    new-array v1, v4, [B

    fill-array-data v1, :array_4

    const-string v2, "UTF-32 big-endian"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->UTF_32_BE:Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;

    return-void

    :cond_0
    move v0, v1

    .line 261
    goto :goto_0

    .line 271
    nop

    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    .line 279
    :array_1
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    .line 286
    nop

    :array_2
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    .line 293
    nop

    :array_3
    .array-data 1
        -0x1t
        -0x2t
        0x0t
        0x0t
    .end array-data

    .line 302
    :array_4
    .array-data 1
        0x0t
        0x0t
        -0x2t
        -0x1t
    .end array-data
.end method

.method private constructor <init>([BLjava/lang/String;)V
    .locals 2
    .param p1, "bom"    # [B
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    sget-boolean v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "invalid BOM: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 315
    :cond_0
    sget-boolean v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "invalid description: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 316
    :cond_1
    sget-boolean v0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "invalid description: empty string is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 318
    :cond_2
    iput-object p1, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->bytes:[B

    .line 319
    iput-object p2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->description:Ljava/lang/String;

    .line 320
    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->bytes:[B

    array-length v0, v2

    .line 328
    .local v0, "length":I
    new-array v1, v0, [B

    .line 331
    .local v1, "result":[B
    iget-object v2, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->bytes:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/eventgenie/android/utils/streams/UnicodeBOMInputStream$BOM;->description:Ljava/lang/String;

    return-object v0
.end method
