.class public Lcom/urbanairship/location/LocationRequestOptions$Builder;
.super Ljava/lang/Object;
.source "LocationRequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/LocationRequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private minDistance:F

.field private minTime:J

.field private priority:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    sget-wide v0, Lcom/urbanairship/location/LocationRequestOptions;->DEFAULT_UPDATE_INTERVAL_MILLISECONDS:J

    iput-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J

    .line 235
    sget v0, Lcom/urbanairship/location/LocationRequestOptions;->DEFAULT_UPDATE_INTERVAL_METERS:F

    iput v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F

    .line 236
    sget v0, Lcom/urbanairship/location/LocationRequestOptions;->DEFAULT_REQUEST_PRIORITY:I

    iput v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I

    return-void
.end method


# virtual methods
.method public create()Lcom/urbanairship/location/LocationRequestOptions;
    .locals 7

    .prologue
    .line 292
    new-instance v1, Lcom/urbanairship/location/LocationRequestOptions;

    iget v2, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I

    iget v3, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F

    iget-wide v4, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IFJLcom/urbanairship/location/LocationRequestOptions$1;)V

    return-object v1
.end method

.method public setMinDistance(F)Lcom/urbanairship/location/LocationRequestOptions$Builder;
    .locals 0
    .param p1, "meters"    # F

    .prologue
    .line 265
    # invokes: Lcom/urbanairship/location/LocationRequestOptions;->verifyMinDistance(F)V
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions;->access$100(F)V

    .line 266
    iput p1, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F

    .line 267
    return-object p0
.end method

.method public setMinTime(JLjava/util/concurrent/TimeUnit;)Lcom/urbanairship/location/LocationRequestOptions$Builder;
    .locals 3
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 250
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    # invokes: Lcom/urbanairship/location/LocationRequestOptions;->verifyMinTime(J)V
    invoke-static {v0, v1}, Lcom/urbanairship/location/LocationRequestOptions;->access$000(J)V

    .line 251
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J

    .line 252
    return-object p0
.end method

.method public setPriority(I)Lcom/urbanairship/location/LocationRequestOptions$Builder;
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 281
    # invokes: Lcom/urbanairship/location/LocationRequestOptions;->verifyPriority(I)V
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions;->access$200(I)V

    .line 282
    iput p1, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I

    .line 283
    return-object p0
.end method
