.class public final enum Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;
.super Ljava/lang/Enum;
.source "MeetingsV2PrepTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

.field public static final enum MODE_ARRANGE_MEETING:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

.field public static final enum MODE_DOWNLOAD_PROFILE:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

.field public static final enum MODE_REARRANGE_MEETING:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

.field public static final enum MODE_SEND_MESSAGE:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    const-string v1, "MODE_ARRANGE_MEETING"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_ARRANGE_MEETING:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    .line 250
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    const-string v1, "MODE_REARRANGE_MEETING"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_REARRANGE_MEETING:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    .line 251
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    const-string v1, "MODE_SEND_MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_SEND_MESSAGE:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    .line 252
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    const-string v1, "MODE_DOWNLOAD_PROFILE"

    invoke-direct {v0, v1, v5}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_DOWNLOAD_PROFILE:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    .line 248
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    sget-object v1, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_ARRANGE_MEETING:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_REARRANGE_MEETING:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_SEND_MESSAGE:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_DOWNLOAD_PROFILE:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->$VALUES:[Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

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
    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 248
    const-class v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->$VALUES:[Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    return-object v0
.end method
