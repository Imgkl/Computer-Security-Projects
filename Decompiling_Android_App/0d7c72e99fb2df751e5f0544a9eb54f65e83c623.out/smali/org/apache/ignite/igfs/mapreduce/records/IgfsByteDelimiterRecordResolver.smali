.class public Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;
.super Ljava/lang/Object;
.source "IgfsByteDelimiterRecordResolver.java"

# interfaces
.implements Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$1;,
        Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;,
        Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private delims:[[B

.field private maxDelimLen:I
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public varargs constructor <init>([[B)V
    .locals 7
    .param p1, "delims"    # [[B

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 63
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Delimiters cannot be null or empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 65
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->delims:[[B

    .line 67
    const/4 v4, 0x0

    .line 69
    .local v4, "maxDelimLen":I
    move-object v0, p1

    .local v0, "arr$":[[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 70
    .local v1, "delim":[B
    if-nez v1, :cond_2

    .line 71
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Delimiter cannot be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    :cond_2
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 73
    array-length v4, v1

    .line 69
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "delim":[B
    :cond_4
    iput v4, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->maxDelimLen:I

    .line 77
    return-void
.end method

.method private findFirstDelimiter(Lorg/apache/ignite/igfs/IgfsInputStream;J)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 10
    .param p1, "stream"    # Lorg/apache/ignite/igfs/IgfsInputStream;
    .param p2, "startPos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsInputStream;",
            "J)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;",
            "Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 153
    iget v4, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->maxDelimLen:I

    int-to-long v4, v4

    sub-long v4, p2, v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 156
    .local v0, "curPos":J
    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/apache/ignite/igfs/IgfsInputStream;->seek(J)V

    .line 158
    new-instance v3, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;-><init>(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$1;)V

    .line 160
    .local v3, "state":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;
    invoke-direct {p0, p1, v3}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->nextDelimiter(Lorg/apache/ignite/igfs/IgfsInputStream;Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;)Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    move-result-object v2

    .line 162
    .local v2, "delim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    cmp-long v4, v0, v8

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$200(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    iget v6, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->maxDelimLen:I

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 168
    :cond_0
    invoke-static {v3, v2}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v4

    return-object v4

    .line 165
    :cond_1
    iget v4, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->maxDelimLen:I

    int-to-long v4, v4

    sub-long v4, v0, v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private maxDelimiterLength([[B)I
    .locals 7
    .param p1, "delims"    # [[B

    .prologue
    .line 126
    const/4 v4, 0x0

    .line 128
    .local v4, "maxDelimLen":I
    move-object v0, p1

    .local v0, "arr$":[[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 129
    .local v1, "delim":[B
    if-nez v1, :cond_0

    .line 130
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Delimiter cannot be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    :cond_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 132
    array-length v4, v1

    .line 128
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "delim":[B
    :cond_2
    return v4
.end method

.method private nextDelimiter(Lorg/apache/ignite/igfs/IgfsInputStream;Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;)Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    .locals 20
    .param p1, "is"    # Lorg/apache/ignite/igfs/IgfsInputStream;
    .param p2, "state"    # Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    sget-boolean v4, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 181
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 183
    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;->access$300(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;)Ljava/util/Map;

    move-result-object v15

    .line 184
    .local v15, "parts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;->access$400(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;)Ljava/util/LinkedList;

    move-result-object v9

    .line 186
    .local v9, "delimQueue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/igfs/IgfsInputStream;->read()I

    move-result v14

    .line 188
    .local v14, "nextByte":I
    :goto_0
    const/4 v4, -0x1

    if-eq v14, v4, :cond_f

    .line 190
    const/4 v11, 0x0

    .local v11, "idx":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->delims:[[B

    array-length v4, v4

    if-ge v11, v4, :cond_d

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->delims:[[B

    aget-object v2, v4, v11

    .line 193
    .local v2, "delim":[B
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 195
    .local v19, "val":I
    :goto_2
    aget-byte v4, v2, v19

    if-ne v4, v14, :cond_9

    .line 196
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_8

    .line 198
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v3, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/igfs/IgfsInputStream;->position()J

    move-result-wide v4

    array-length v6, v2

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/igfs/IgfsInputStream;->position()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;-><init>(JJLorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$1;)V

    .line 203
    .local v3, "newDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    const/4 v12, 0x0

    .line 205
    .local v12, "ignore":Z
    const/16 v17, -0x1

    .line 207
    .local v17, "replaceIdx":I
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v10, v4, -0x1

    .local v10, "i":I
    :goto_3
    if-ltz v10, :cond_2

    .line 208
    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    .line 210
    .local v16, "prevDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$200(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v4

    invoke-static {v3}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$200(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 211
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$100(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v4

    invoke-static {v3}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$200(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 213
    const/4 v12, 0x1

    .line 226
    .end local v16    # "prevDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    :cond_2
    :goto_4
    if-nez v12, :cond_4

    .line 227
    if-ltz v17, :cond_3

    .line 228
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v4

    move/from16 v0, v17

    invoke-virtual {v9, v0, v4}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 230
    :cond_3
    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v3    # "newDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    .end local v10    # "i":I
    .end local v12    # "ignore":Z
    .end local v17    # "replaceIdx":I
    :cond_4
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 193
    .end local v19    # "val":I
    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    .line 218
    .restart local v3    # "newDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    .restart local v10    # "i":I
    .restart local v12    # "ignore":Z
    .restart local v16    # "prevDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    .restart local v17    # "replaceIdx":I
    .restart local v19    # "val":I
    :cond_6
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$200(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v4

    invoke-static {v3}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$200(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 220
    move/from16 v17, v10

    .line 222
    goto :goto_4

    .line 207
    :cond_7
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 234
    .end local v3    # "newDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    .end local v10    # "i":I
    .end local v12    # "ignore":Z
    .end local v16    # "prevDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    .end local v17    # "replaceIdx":I
    :cond_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 236
    :cond_9
    if-eqz v19, :cond_4

    .line 237
    const/4 v4, 0x0

    aget-byte v4, v2, v4

    if-ne v4, v14, :cond_c

    .line 238
    const/16 v18, 0x1

    .line 240
    .local v18, "shift":Z
    const/4 v13, 0x1

    .local v13, "k":I
    :goto_6
    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 241
    aget-byte v4, v2, v13

    if-eq v4, v14, :cond_b

    .line 242
    const/16 v18, 0x0

    .line 248
    :cond_a
    if-nez v18, :cond_4

    .line 249
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 240
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 253
    .end local v13    # "k":I
    .end local v18    # "shift":Z
    :cond_c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 258
    .end local v2    # "delim":[B
    .end local v19    # "val":I
    :cond_d
    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 259
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    .line 261
    .local v2, "delim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/igfs/IgfsInputStream;->position()J

    move-result-wide v4

    invoke-static {v2}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$100(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->maxDelimLen:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_e

    .line 262
    invoke-virtual {v9}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    .line 268
    .end local v2    # "delim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    .end local v11    # "idx":I
    :goto_7
    return-object v4

    .line 265
    .restart local v11    # "idx":I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/igfs/IgfsInputStream;->read()I

    move-result v14

    goto/16 :goto_0

    .line 268
    .end local v11    # "idx":I
    :cond_f
    invoke-virtual {v9}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    goto :goto_7
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 295
    .local v1, "len":I
    new-array v2, v1, [[B

    iput-object v2, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->delims:[[B

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 298
    iget-object v2, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->delims:[[B

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->delims:[[B

    invoke-direct {p0, v2}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->maxDelimiterLength([[B)I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->maxDelimLen:I

    .line 302
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_1
    return-void
.end method

.method public resolveRecords(Lorg/apache/ignite/IgniteFileSystem;Lorg/apache/ignite/igfs/IgfsInputStream;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;)Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    .locals 20
    .param p1, "fs"    # Lorg/apache/ignite/IgniteFileSystem;
    .param p2, "stream"    # Lorg/apache/ignite/igfs/IgfsInputStream;
    .param p3, "suggestedRecord"    # Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->start()J

    move-result-wide v18

    .line 83
    .local v18, "suggestedStart":J
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->length()J

    move-result-wide v4

    add-long v16, v18, v4

    .line 85
    .local v16, "suggestedEnd":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->findFirstDelimiter(Lorg/apache/ignite/igfs/IgfsInputStream;J)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v11

    .line 87
    .local v11, "firstDelim":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lorg/apache/ignite/lang/IgniteBiTuple;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;

    move-object v15, v4

    .line 89
    .local v15, "state":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;
    :goto_0
    invoke-virtual {v11}, Lorg/apache/ignite/lang/IgniteBiTuple;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    .line 91
    .local v10, "curDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    :goto_1
    if-eqz v10, :cond_1

    invoke-static {v10}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$100(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v4

    cmp-long v4, v4, v18

    if-gez v4, :cond_1

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->nextDelimiter(Lorg/apache/ignite/igfs/IgfsInputStream;Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;)Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    move-result-object v10

    goto :goto_1

    .line 87
    .end local v10    # "curDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    .end local v15    # "state":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;
    :cond_0
    new-instance v15, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;

    const/4 v4, 0x0

    invoke-direct {v15, v4}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;-><init>(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$1;)V

    goto :goto_0

    .line 94
    .restart local v10    # "curDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    .restart local v15    # "state":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;
    :cond_1
    if-eqz v10, :cond_2

    invoke-static {v10}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$100(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v4

    cmp-long v4, v4, v18

    if-ltz v4, :cond_2

    invoke-static {v10}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$100(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v4

    cmp-long v4, v4, v16

    if-ltz v4, :cond_3

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-nez v4, :cond_9

    .line 97
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-nez v4, :cond_5

    const-wide/16 v6, 0x0

    .line 99
    .local v6, "start":J
    :goto_2
    if-eqz v10, :cond_4

    invoke-static {v10}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$100(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v4

    cmp-long v4, v4, v16

    if-gez v4, :cond_7

    .line 100
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->findFirstDelimiter(Lorg/apache/ignite/igfs/IgfsInputStream;J)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v14

    .line 102
    .local v14, "lastDelim":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;>;"
    if-eqz v14, :cond_6

    invoke-virtual {v11}, Lorg/apache/ignite/lang/IgniteBiTuple;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;

    move-object v15, v4

    .line 104
    :goto_3
    invoke-virtual {v14}, Lorg/apache/ignite/lang/IgniteBiTuple;->getValue()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "curDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    check-cast v10, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    .line 106
    .restart local v10    # "curDelim":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
    :goto_4
    if-eqz v10, :cond_7

    invoke-static {v10}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$100(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v4

    cmp-long v4, v4, v16

    if-gez v4, :cond_7

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->nextDelimiter(Lorg/apache/ignite/igfs/IgfsInputStream;Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;)Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    move-result-object v10

    goto :goto_4

    .line 97
    .end local v6    # "start":J
    .end local v14    # "lastDelim":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;>;"
    :cond_5
    invoke-static {v10}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$100(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v6

    goto :goto_2

    .line 102
    .restart local v6    # "start":J
    .restart local v14    # "lastDelim":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;>;"
    :cond_6
    new-instance v15, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;

    .end local v15    # "state":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;
    const/4 v4, 0x0

    invoke-direct {v15, v4}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;-><init>(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$1;)V

    goto :goto_3

    .line 110
    .end local v14    # "lastDelim":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;>;"
    .restart local v15    # "state":Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$State;
    :cond_7
    if-eqz v10, :cond_8

    invoke-static {v10}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->access$100(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J

    move-result-wide v12

    .line 112
    .local v12, "end":J
    :goto_5
    new-instance v4, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v5

    sub-long v8, v12, v6

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;-><init>(Lorg/apache/ignite/igfs/IgfsPath;JJ)V

    .line 116
    .end local v6    # "start":J
    .end local v12    # "end":J
    :goto_6
    return-object v4

    .line 110
    .restart local v6    # "start":J
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/igfs/IgfsInputStream;->position()J

    move-result-wide v12

    goto :goto_5

    .line 116
    .end local v6    # "start":J
    :cond_9
    const/4 v4, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-class v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v4, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->delims:[[B

    if-eqz v4, :cond_0

    .line 279
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 281
    iget-object v4, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->delims:[[B

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 283
    iget-object v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;->delims:[[B

    .local v0, "arr$":[[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 284
    .local v1, "delim":[B
    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "arr$":[[B
    .end local v1    # "delim":[B
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 288
    :cond_1
    return-void
.end method
