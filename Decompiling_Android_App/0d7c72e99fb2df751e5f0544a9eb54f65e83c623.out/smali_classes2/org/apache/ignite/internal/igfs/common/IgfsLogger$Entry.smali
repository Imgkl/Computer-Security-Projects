.class Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;
.super Ljava/lang/Object;
.source "IgfsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/igfs/common/IgfsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field private final append:Ljava/lang/Boolean;

.field private final blockSize:J

.field private final bufSize:I

.field private final dataLen:J

.field private final destPath:Ljava/lang/String;

.field private final list:[Ljava/lang/String;

.field private mode:Lorg/apache/ignite/igfs/IgfsMode;

.field private final overwrite:Ljava/lang/Boolean;

.field private final path:Ljava/lang/String;

.field private final pos:J

.field private final readLen:I

.field private final readLimit:J

.field private final recursive:Ljava/lang/Boolean;

.field private final replication:I

.field private final skipCnt:J

.field private final streamId:J

.field private final sysTime:J

.field final synthetic this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

.field private final threadId:J

.field private final total:J

.field private final ts:J

.field private final type:I

.field private final userTime:J


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;ILjava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/String;)V
    .locals 4
    .param p2, "type"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p5, "streamId"    # Ljava/lang/Long;
    .param p6, "bufSize"    # Ljava/lang/Integer;
    .param p7, "dataLen"    # Ljava/lang/Long;
    .param p8, "append"    # Ljava/lang/Boolean;
    .param p9, "overwrite"    # Ljava/lang/Boolean;
    .param p10, "replication"    # Ljava/lang/Integer;
    .param p11, "blockSize"    # Ljava/lang/Long;
    .param p12, "pos"    # Ljava/lang/Long;
    .param p13, "readLen"    # Ljava/lang/Integer;
    .param p14, "skipCnt"    # Ljava/lang/Long;
    .param p15, "readLimit"    # Ljava/lang/Long;
    .param p16, "userTime"    # Ljava/lang/Long;
    .param p17, "sysTime"    # Ljava/lang/Long;
    .param p18, "total"    # Ljava/lang/Long;
    .param p19, "destPath"    # Ljava/lang/String;
    .param p20, "recursive"    # Ljava/lang/Boolean;
    .param p21, "list"    # [Ljava/lang/String;

    .prologue
    .line 584
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->threadId:J

    .line 586
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->ts:J

    .line 588
    iput p2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->type:I

    .line 589
    iput-object p3, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->path:Ljava/lang/String;

    .line 590
    iput-object p4, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 591
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->streamId:J

    .line 592
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    iput v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->bufSize:I

    .line 593
    if-eqz p7, :cond_2

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->dataLen:J

    .line 594
    iput-object p8, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->append:Ljava/lang/Boolean;

    .line 595
    iput-object p9, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->overwrite:Ljava/lang/Boolean;

    .line 596
    if-eqz p10, :cond_3

    invoke-virtual {p10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_3
    iput v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->replication:I

    .line 597
    if-eqz p11, :cond_4

    invoke-virtual {p11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_4
    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->blockSize:J

    .line 598
    if-eqz p12, :cond_5

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_5
    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->pos:J

    .line 599
    if-eqz p13, :cond_6

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_6
    iput v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->readLen:I

    .line 600
    if-eqz p14, :cond_7

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_7
    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->skipCnt:J

    .line 601
    if-eqz p15, :cond_8

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_8
    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->readLimit:J

    .line 602
    if-eqz p16, :cond_9

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_9
    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->userTime:J

    .line 603
    if-eqz p17, :cond_a

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_a
    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->sysTime:J

    .line 604
    if-eqz p18, :cond_b

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_b
    iput-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->total:J

    .line 605
    move-object/from16 v0, p19

    iput-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->destPath:Ljava/lang/String;

    .line 606
    move-object/from16 v0, p20

    iput-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->recursive:Ljava/lang/Boolean;

    .line 607
    move-object/from16 v0, p21

    iput-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->list:[Ljava/lang/String;

    .line 608
    return-void

    .line 591
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 592
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 593
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 596
    :cond_3
    const/4 v2, -0x1

    goto :goto_3

    .line 597
    :cond_4
    const-wide/16 v2, -0x1

    goto :goto_4

    .line 598
    :cond_5
    const-wide/16 v2, -0x1

    goto :goto_5

    .line 599
    :cond_6
    const/4 v2, -0x1

    goto :goto_6

    .line 600
    :cond_7
    const-wide/16 v2, -0x1

    goto :goto_7

    .line 601
    :cond_8
    const-wide/16 v2, -0x1

    goto :goto_8

    .line 602
    :cond_9
    const-wide/16 v2, -0x1

    goto :goto_9

    .line 603
    :cond_a
    const-wide/16 v2, -0x1

    goto :goto_a

    .line 604
    :cond_b
    const-wide/16 v2, -0x1

    goto :goto_b
.end method

.method private string(I)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 617
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private string(J)Ljava/lang/String;
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 627
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private string(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    const/16 v9, 0x7e

    const/16 v8, 0x3b

    .line 637
    if-nez p1, :cond_0

    .line 638
    const-string v7, ""

    .line 662
    .end local p1    # "val":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 639
    .restart local p1    # "val":Ljava/lang/Object;
    :cond_0
    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_2

    .line 640
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "val":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    goto :goto_0

    :cond_1
    const-string v7, "0"

    goto :goto_0

    .line 641
    .restart local p1    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 642
    check-cast p1, Ljava/lang/String;

    .end local p1    # "val":Ljava/lang/Object;
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 643
    .restart local p1    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v7, p1, [Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 644
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "val":Ljava/lang/Object;
    move-object v6, p1

    check-cast v6, [Ljava/lang/String;

    .line 646
    .local v6, "val0":[Ljava/lang/String;
    new-instance v1, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 648
    .local v1, "buf":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    const/4 v2, 0x1

    .line 650
    .local v2, "first":Z
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v5, v0, v3

    .line 651
    .local v5, "str":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 652
    const/4 v2, 0x0

    .line 656
    :goto_2
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 654
    :cond_4
    const-string v7, ","

    invoke-virtual {v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_2

    .line 659
    .end local v5    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 662
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "buf":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    .end local v2    # "first":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "val0":[Ljava/lang/String;
    .restart local p1    # "val":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 667
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 669
    .local v0, "res":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->ts:J

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->threadId:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->this$0:Lorg/apache/ignite/internal/igfs/common/IgfsLogger;

    # getter for: Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->pid:I
    invoke-static {v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger;->access$100(Lorg/apache/ignite/internal/igfs/common/IgfsLogger;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(I)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->type:I

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(I)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->path:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->streamId:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->bufSize:I

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->dataLen:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->append:Ljava/lang/Boolean;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->overwrite:Ljava/lang/Boolean;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->replication:I

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->blockSize:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->pos:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->readLen:I

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->skipCnt:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->readLimit:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->userTime:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->sysTime:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->total:J

    invoke-direct {p0, v2, v3}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->destPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->recursive:Ljava/lang/Boolean;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->list:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/igfs/common/IgfsLogger$Entry;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 678
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
