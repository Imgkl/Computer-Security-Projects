.class public interface abstract Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;
.super Ljava/lang/Object;
.source "ShowMeetingQuotaDetailsRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MeetingQuotaType"
.end annotation


# static fields
.field public static final QUOTA_CREDIT_DEBIT:Ljava/lang/Integer;

.field public static final QUOTA_PER_DAY:Ljava/lang/Integer;

.field public static final QUOTA_PER_EVENT:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_PER_EVENT:Ljava/lang/Integer;

    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_PER_DAY:Ljava/lang/Integer;

    .line 106
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_CREDIT_DEBIT:Ljava/lang/Integer;

    return-void
.end method
