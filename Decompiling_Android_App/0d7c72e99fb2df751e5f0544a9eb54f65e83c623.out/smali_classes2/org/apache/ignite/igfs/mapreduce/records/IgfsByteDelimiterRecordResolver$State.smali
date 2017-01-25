.class Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;
.super Ljava/lang/Object;
.source "IgfsByteDelimiterRecordResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private final delims:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;",
            ">;"
        }
    .end annotation
.end field

.field private final parts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;->parts:Ljava/util/Map;

    .line 344
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;->delims:Ljava/util/LinkedList;

    .line 345
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$1;

    .prologue
    .line 331
    invoke-direct {p0}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;->parts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;->delims:Ljava/util/LinkedList;

    return-object v0
.end method
