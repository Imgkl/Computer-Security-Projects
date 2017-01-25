.class Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;
.super Ljava/lang/Object;
.source "GridClockDeltaSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeltaAverage"
.end annotation


# instance fields
.field private idx:I

.field private vals:[J


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->vals:[J

    .line 198
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$1;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;-><init>(I)V

    return-void
.end method


# virtual methods
.method public average()J
    .locals 10

    .prologue
    .line 223
    const-wide/16 v4, 0x0

    .line 225
    .local v4, "sum":J
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->vals:[J

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v6, v0, v1

    .line 226
    .local v6, "val":J
    add-long/2addr v4, v6

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v6    # "val":J
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->vals:[J

    array-length v3, v3

    int-to-long v8, v3

    div-long v8, v4, v8

    return-wide v8
.end method

.method public onValue(J)V
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 206
    iget v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->idx:I

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->vals:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->vals:[J

    iget v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->idx:I

    aput-wide p1, v0, v1

    .line 208
    :cond_0
    return-void
.end method

.method public ready()Z
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->idx:I

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshot$DeltaAverage;->vals:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
