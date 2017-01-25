.class public Ljavax/cache/expiry/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/cache/expiry/Duration$1;
    }
.end annotation


# static fields
.field public static final ETERNAL:Ljavax/cache/expiry/Duration;

.field public static final FIVE_MINUTES:Ljavax/cache/expiry/Duration;

.field public static final ONE_DAY:Ljavax/cache/expiry/Duration;

.field public static final ONE_HOUR:Ljavax/cache/expiry/Duration;

.field public static final ONE_MINUTE:Ljavax/cache/expiry/Duration;

.field public static final TEN_MINUTES:Ljavax/cache/expiry/Duration;

.field public static final THIRTY_MINUTES:Ljavax/cache/expiry/Duration;

.field public static final TWENTY_MINUTES:Ljavax/cache/expiry/Duration;

.field public static final ZERO:Ljavax/cache/expiry/Duration;

.field public static final serialVersionUID:J = 0x2edeb81482L


# instance fields
.field private final durationAmount:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 37
    new-instance v0, Ljavax/cache/expiry/Duration;

    invoke-direct {v0}, Ljavax/cache/expiry/Duration;-><init>()V

    sput-object v0, Ljavax/cache/expiry/Duration;->ETERNAL:Ljavax/cache/expiry/Duration;

    .line 42
    new-instance v0, Ljavax/cache/expiry/Duration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v4, v5}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    sput-object v0, Ljavax/cache/expiry/Duration;->ONE_DAY:Ljavax/cache/expiry/Duration;

    .line 47
    new-instance v0, Ljavax/cache/expiry/Duration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v4, v5}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    sput-object v0, Ljavax/cache/expiry/Duration;->ONE_HOUR:Ljavax/cache/expiry/Duration;

    .line 52
    new-instance v0, Ljavax/cache/expiry/Duration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-direct {v0, v1, v2, v3}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    sput-object v0, Ljavax/cache/expiry/Duration;->THIRTY_MINUTES:Ljavax/cache/expiry/Duration;

    .line 57
    new-instance v0, Ljavax/cache/expiry/Duration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-direct {v0, v1, v2, v3}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    sput-object v0, Ljavax/cache/expiry/Duration;->TWENTY_MINUTES:Ljavax/cache/expiry/Duration;

    .line 62
    new-instance v0, Ljavax/cache/expiry/Duration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    sput-object v0, Ljavax/cache/expiry/Duration;->TEN_MINUTES:Ljavax/cache/expiry/Duration;

    .line 67
    new-instance v0, Ljavax/cache/expiry/Duration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    sput-object v0, Ljavax/cache/expiry/Duration;->FIVE_MINUTES:Ljavax/cache/expiry/Duration;

    .line 72
    new-instance v0, Ljavax/cache/expiry/Duration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v4, v5}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    sput-object v0, Ljavax/cache/expiry/Duration;->ONE_MINUTE:Ljavax/cache/expiry/Duration;

    .line 77
    new-instance v0, Ljavax/cache/expiry/Duration;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    sput-object v0, Ljavax/cache/expiry/Duration;->ZERO:Ljavax/cache/expiry/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    .line 97
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    cmp-long v0, p1, v4

    if-eqz v0, :cond_0

    cmp-long v0, p3, v4

    if-nez v0, :cond_1

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 145
    iput-wide v2, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot specify a negative startTime."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    cmp-long v0, p3, v2

    if-gez v0, :cond_3

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot specify a negative endTime."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 152
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/TimeUnit;J)V
    .locals 4
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p2, "durationAmount"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    if-nez p1, :cond_1

    .line 109
    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 112
    iput-wide v2, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    .line 131
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 118
    :cond_1
    sget-object v0, Ljavax/cache/expiry/Duration$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    iput-object p1, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 126
    cmp-long v0, p2, v2

    if-gez v0, :cond_2

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot specify a negative durationAmount."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a TimeUnit of milliseconds or higher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    iput-wide p2, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 212
    if-ne p0, p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v7, v8, :cond_3

    :cond_2
    move v1, v6

    .line 216
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 219
    check-cast v0, Ljavax/cache/expiry/Duration;

    .line 221
    .local v0, "duration":Ljavax/cache/expiry/Duration;
    iget-object v7, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    if-nez v7, :cond_4

    iget-object v7, v0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    if-nez v7, :cond_4

    iget-wide v8, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    iget-wide v10, v0, Ljavax/cache/expiry/Duration;->durationAmount:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 224
    :cond_4
    iget-object v7, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v7, :cond_5

    iget-object v7, v0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v7, :cond_5

    .line 225
    iget-object v7, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 226
    .local v2, "time1":J
    iget-object v7, v0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v0, Ljavax/cache/expiry/Duration;->durationAmount:J

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 227
    .local v4, "time2":J
    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    move v1, v6

    goto :goto_0

    .end local v2    # "time1":J
    .end local v4    # "time2":J
    :cond_5
    move v1, v6

    .line 229
    goto :goto_0
.end method

.method public getAdjustedTime(J)J
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 200
    invoke-virtual {p0}, Ljavax/cache/expiry/Duration;->isEternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-wide v0, 0x7fffffffffffffffL

    .line 203
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    goto :goto_0
.end method

.method public getDurationAmount()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    return-wide v0
.end method

.method public getTimeUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public isEternal()Z
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_0

    iget-wide v0, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Ljavax/cache/expiry/Duration;->timeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljavax/cache/expiry/Duration;->durationAmount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
