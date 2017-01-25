.class public final enum Lorg/apache/ignite/internal/GridTopic;
.super Ljava/lang/Enum;
.source "GridTopic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/GridTopic$1;,
        Lorg/apache/ignite/internal/GridTopic$T8;,
        Lorg/apache/ignite/internal/GridTopic$T7;,
        Lorg/apache/ignite/internal/GridTopic$T6;,
        Lorg/apache/ignite/internal/GridTopic$T5;,
        Lorg/apache/ignite/internal/GridTopic$T4;,
        Lorg/apache/ignite/internal/GridTopic$T3;,
        Lorg/apache/ignite/internal/GridTopic$T2;,
        Lorg/apache/ignite/internal/GridTopic$T1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/GridTopic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/GridTopic;

.field private static final DFLT_CHARSET:Ljava/nio/charset/Charset;

.field public static final enum TOPIC_CACHE:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_CHECKPOINT:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_CLASSLOAD:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_COMM_USER:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_CONTINUOUS:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_DATASTREAM:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_EVENT:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_HADOOP:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_JOB:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_JOB_CANCEL:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_JOB_SIBLINGS:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_MONGO:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_QUERY:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_REPLICATION:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_REST:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_STREAM:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_TASK:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_TASK_CANCEL:Lorg/apache/ignite/internal/GridTopic;

.field public static final enum TOPIC_TIME_SYNC:Lorg/apache/ignite/internal/GridTopic;

.field private static final VALS:[Lorg/apache/ignite/internal/GridTopic;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_JOB"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB:Lorg/apache/ignite/internal/GridTopic;

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_JOB_SIBLINGS"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_SIBLINGS:Lorg/apache/ignite/internal/GridTopic;

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_TASK"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK:Lorg/apache/ignite/internal/GridTopic;

    .line 42
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_CHECKPOINT"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CHECKPOINT:Lorg/apache/ignite/internal/GridTopic;

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_JOB_CANCEL"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    .line 48
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_TASK_CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    .line 51
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_CLASSLOAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CLASSLOAD:Lorg/apache/ignite/internal/GridTopic;

    .line 54
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_EVENT:Lorg/apache/ignite/internal/GridTopic;

    .line 57
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_CACHE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CACHE:Lorg/apache/ignite/internal/GridTopic;

    .line 60
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_COMM_USER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_COMM_USER:Lorg/apache/ignite/internal/GridTopic;

    .line 63
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_REST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_REST:Lorg/apache/ignite/internal/GridTopic;

    .line 66
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_REPLICATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_REPLICATION:Lorg/apache/ignite/internal/GridTopic;

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_IGFS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_DATASTREAM"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_DATASTREAM:Lorg/apache/ignite/internal/GridTopic;

    .line 75
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_STREAM"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_STREAM:Lorg/apache/ignite/internal/GridTopic;

    .line 78
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_CONTINUOUS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CONTINUOUS:Lorg/apache/ignite/internal/GridTopic;

    .line 81
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_MONGO"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_MONGO:Lorg/apache/ignite/internal/GridTopic;

    .line 84
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_TIME_SYNC"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TIME_SYNC:Lorg/apache/ignite/internal/GridTopic;

    .line 87
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_HADOOP"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_HADOOP:Lorg/apache/ignite/internal/GridTopic;

    .line 90
    new-instance v0, Lorg/apache/ignite/internal/GridTopic;

    const-string v1, "TOPIC_QUERY"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_QUERY:Lorg/apache/ignite/internal/GridTopic;

    .line 31
    const/16 v0, 0x14

    new-array v0, v0, [Lorg/apache/ignite/internal/GridTopic;

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB:Lorg/apache/ignite/internal/GridTopic;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_SIBLINGS:Lorg/apache/ignite/internal/GridTopic;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK:Lorg/apache/ignite/internal/GridTopic;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CHECKPOINT:Lorg/apache/ignite/internal/GridTopic;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CLASSLOAD:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_EVENT:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CACHE:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_COMM_USER:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_REST:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_REPLICATION:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_DATASTREAM:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_STREAM:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_CONTINUOUS:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_MONGO:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TIME_SYNC:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_HADOOP:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/apache/ignite/internal/GridTopic;->TOPIC_QUERY:Lorg/apache/ignite/internal/GridTopic;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->$VALUES:[Lorg/apache/ignite/internal/GridTopic;

    .line 93
    invoke-static {}, Lorg/apache/ignite/internal/GridTopic;->values()[Lorg/apache/ignite/internal/GridTopic;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->VALS:[Lorg/apache/ignite/internal/GridTopic;

    .line 96
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/GridTopic;->DFLT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 693
    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/GridTopic;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 105
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/GridTopic;->VALS:[Lorg/apache/ignite/internal/GridTopic;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/GridTopic;->VALS:[Lorg/apache/ignite/internal/GridTopic;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/GridTopic;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/GridTopic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridTopic;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/GridTopic;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/apache/ignite/internal/GridTopic;->$VALUES:[Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/GridTopic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/GridTopic;

    return-object v0
.end method


# virtual methods
.method public topic(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Lorg/apache/ignite/internal/GridTopic$T3;

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->DFLT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/ignite/internal/GridTopic$T3;-><init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;Lorg/apache/ignite/internal/GridTopic$1;)V

    return-object v0
.end method

.method public topic(Ljava/lang/String;IJ)Ljava/lang/Object;
    .locals 7
    .param p1, "id1"    # Ljava/lang/String;
    .param p2, "id2"    # I
    .param p3, "id3"    # J

    .prologue
    .line 161
    new-instance v0, Lorg/apache/ignite/internal/GridTopic$T5;

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->DFLT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/GridTopic$T5;-><init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;IJLorg/apache/ignite/internal/GridTopic$1;)V

    return-object v0
.end method

.method public topic(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 8
    .param p1, "id1"    # Ljava/lang/String;
    .param p2, "id2"    # J

    .prologue
    .line 151
    new-instance v1, Lorg/apache/ignite/internal/GridTopic$T6;

    sget-object v0, Lorg/apache/ignite/internal/GridTopic;->DFLT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/GridTopic$T6;-><init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;JLorg/apache/ignite/internal/GridTopic$1;)V

    return-object v1
.end method

.method public topic(Ljava/lang/String;Ljava/util/UUID;IJ)Ljava/lang/Object;
    .locals 10
    .param p1, "id1"    # Ljava/lang/String;
    .param p2, "id2"    # Ljava/util/UUID;
    .param p3, "id3"    # I
    .param p4, "id4"    # J

    .prologue
    .line 182
    new-instance v1, Lorg/apache/ignite/internal/GridTopic$T7;

    sget-object v0, Lorg/apache/ignite/internal/GridTopic;->DFLT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v3

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/internal/GridTopic$T7;-><init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;Ljava/util/UUID;IJLorg/apache/ignite/internal/GridTopic$1;)V

    return-object v1
.end method

.method public topic(Ljava/lang/String;Ljava/util/UUID;J)Ljava/lang/Object;
    .locals 7
    .param p1, "id1"    # Ljava/lang/String;
    .param p2, "id2"    # Ljava/util/UUID;
    .param p3, "id3"    # J

    .prologue
    .line 171
    new-instance v0, Lorg/apache/ignite/internal/GridTopic$T4;

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->DFLT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/GridTopic$T4;-><init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/GridTopic$1;)V

    return-object v0
.end method

.method public topic(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 113
    new-instance v0, Lorg/apache/ignite/internal/GridTopic$T1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/ignite/internal/GridTopic$T1;-><init>(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/GridTopic$1;)V

    return-object v0
.end method

.method public topic(Lorg/apache/ignite/lang/IgniteUuid;J)Ljava/lang/Object;
    .locals 8
    .param p1, "id1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "id2"    # J

    .prologue
    .line 131
    new-instance v1, Lorg/apache/ignite/internal/GridTopic$T8;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/GridTopic$T8;-><init>(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/lang/IgniteUuid;JLorg/apache/ignite/internal/GridTopic$1;)V

    return-object v1
.end method

.method public topic(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;)Ljava/lang/Object;
    .locals 2
    .param p1, "id1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "id2"    # Ljava/util/UUID;

    .prologue
    .line 122
    new-instance v0, Lorg/apache/ignite/internal/GridTopic$T2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/ignite/internal/GridTopic$T2;-><init>(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Lorg/apache/ignite/internal/GridTopic$1;)V

    return-object v0
.end method
