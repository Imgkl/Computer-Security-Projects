.class public Lcom/urbanairship/location/LocationRequestOptions;
.super Ljava/lang/Object;
.source "LocationRequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/LocationRequestOptions$1;,
        Lcom/urbanairship/location/LocationRequestOptions$Builder;
    }
.end annotation


# static fields
.field public static DEFAULT_REQUEST_PRIORITY:I = 0x0

.field public static DEFAULT_UPDATE_INTERVAL_METERS:F = 0.0f

.field public static DEFAULT_UPDATE_INTERVAL_MILLISECONDS:J = 0x0L

.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x2

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x1

.field public static final PRIORITY_LOW_POWER:I = 0x3

.field public static final PRIORITY_NO_POWER:I = 0x4


# instance fields
.field private minDistance:F

.field private minTime:J

.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const/high16 v0, 0x44480000    # 800.0f

    sput v0, Lcom/urbanairship/location/LocationRequestOptions;->DEFAULT_UPDATE_INTERVAL_METERS:F

    .line 46
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/urbanairship/location/LocationRequestOptions;->DEFAULT_UPDATE_INTERVAL_MILLISECONDS:J

    .line 51
    const/4 v0, 0x2

    sput v0, Lcom/urbanairship/location/LocationRequestOptions;->DEFAULT_REQUEST_PRIORITY:I

    return-void
.end method

.method private constructor <init>(IFJ)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "minDistance"    # F
    .param p3, "minTime"    # J

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions;->verifyPriority(I)V

    .line 120
    invoke-static {p2}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinDistance(F)V

    .line 121
    invoke-static {p3, p4}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinTime(J)V

    .line 124
    iput p1, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    .line 125
    iput p2, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    .line 126
    iput-wide p3, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    .line 127
    return-void
.end method

.method synthetic constructor <init>(IFJLcom/urbanairship/location/LocationRequestOptions$1;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # F
    .param p3, "x2"    # J
    .param p5, "x3"    # Lcom/urbanairship/location/LocationRequestOptions$1;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IFJ)V

    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinTime(J)V

    return-void
.end method

.method static synthetic access$100(F)V
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 36
    invoke-static {p0}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinDistance(F)V

    return-void
.end method

.method static synthetic access$200(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 36
    invoke-static {p0}, Lcom/urbanairship/location/LocationRequestOptions;->verifyPriority(I)V

    return-void
.end method

.method public static createDefaultOptions()Lcom/urbanairship/location/LocationRequestOptions;
    .locals 6

    .prologue
    .line 137
    new-instance v0, Lcom/urbanairship/location/LocationRequestOptions;

    sget v1, Lcom/urbanairship/location/LocationRequestOptions;->DEFAULT_REQUEST_PRIORITY:I

    sget v2, Lcom/urbanairship/location/LocationRequestOptions;->DEFAULT_UPDATE_INTERVAL_METERS:F

    sget-wide v4, Lcom/urbanairship/location/LocationRequestOptions;->DEFAULT_UPDATE_INTERVAL_MILLISECONDS:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IFJ)V

    return-object v0
.end method

.method private static verifyMinDistance(F)V
    .locals 2
    .param p0, "minDistance"    # F

    .prologue
    .line 206
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minDistance must be greater or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    return-void
.end method

.method private static verifyMinTime(J)V
    .locals 2
    .param p0, "minTime"    # J

    .prologue
    .line 195
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minTime must be greater or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    return-void
.end method

.method private static verifyPriority(I)V
    .locals 2
    .param p0, "priority"    # I

    .prologue
    .line 217
    packed-switch p0, :pswitch_data_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Priority can only be either PRIORITY_HIGH_ACCURACY, PRIORITY_BALANCED_POWER_ACCURACY, PRIORITY_LOW_POWER, or PRIORITY_NO_POWER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :pswitch_0
    return-void

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 179
    instance-of v2, p1, Lcom/urbanairship/location/LocationRequestOptions;

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 183
    check-cast v0, Lcom/urbanairship/location/LocationRequestOptions;

    .line 184
    .local v0, "other":Lcom/urbanairship/location/LocationRequestOptions;
    iget v2, v0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    iget v3, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    iget-wide v4, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, v0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    iget v3, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMinDistance()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    return v0
.end method

.method public getMinTime()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationRequestOptions: Priority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minDistance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
