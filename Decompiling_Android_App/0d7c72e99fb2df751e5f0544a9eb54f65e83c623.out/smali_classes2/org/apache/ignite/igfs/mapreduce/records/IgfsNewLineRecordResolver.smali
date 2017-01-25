.class public Lorg/apache/ignite/igfs/mapreduce/records/IgfsNewLineRecordResolver;
.super Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;
.source "IgfsNewLineRecordResolver.java"


# static fields
.field public static final NEW_LINE:Lorg/apache/ignite/igfs/mapreduce/records/IgfsNewLineRecordResolver;

.field public static final SYM_CR:B = 0xdt

.field public static final SYM_LF:B = 0xat

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsNewLineRecordResolver;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsNewLineRecordResolver;-><init>(Z)V

    sput-object v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsNewLineRecordResolver;->NEW_LINE:Lorg/apache/ignite/igfs/mapreduce/records/IgfsNewLineRecordResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;-><init>()V

    .line 50
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 5
    .param p1, "b"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-array v0, v1, [[B

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [B

    const/16 v2, 0xa

    aput-byte v2, v1, v3

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;-><init>([[B)V

    .line 60
    return-void

    .line 59
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsNewLineRecordResolver;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
