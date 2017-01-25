.class public Lorg/apache/ignite/igfs/mapreduce/records/IgfsStringDelimiterRecordResolver;
.super Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;
.source "IgfsStringDelimiterRecordResolver.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;-><init>()V

    .line 59
    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/charset/Charset;[Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "delims"    # [Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1, p2}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsStringDelimiterRecordResolver;->toBytes(Ljava/nio/charset/Charset;[Ljava/lang/String;)[[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;-><init>([[B)V

    .line 69
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "delims"    # [Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsStringDelimiterRecordResolver;->toBytes(Ljava/nio/charset/Charset;[Ljava/lang/String;)[[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;-><init>([[B)V

    .line 78
    return-void
.end method

.method private static varargs toBytes(Ljava/nio/charset/Charset;[Ljava/lang/String;)[[B
    .locals 3
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "delims"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 42
    const/4 v1, 0x0

    check-cast v1, [[B

    .line 44
    .local v1, "res":[[B
    if-eqz p1, :cond_0

    .line 45
    array-length v2, p1

    new-array v1, v2, [[B

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 48
    aget-object v2, p1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsStringDelimiterRecordResolver;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
