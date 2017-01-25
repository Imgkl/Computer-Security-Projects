.class public Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;
.super Ljava/lang/Object;
.source "LiveSyncServiceStaticMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportPostParams"
.end annotation


# instance fields
.field private final content:Ljava/lang/String;

.field private final entityId:J

.field private final focus:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final namespace:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "focus"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "entityId"    # J
    .param p6, "namespace"    # J

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->focus:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->content:Ljava/lang/String;

    .line 82
    iput-wide p4, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->entityId:J

    .line 83
    iput-object p3, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->message:Ljava/lang/String;

    .line 84
    iput-wide p6, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->namespace:J

    .line 85
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->focus:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->entityId:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->namespace:J

    return-wide v0
.end method
