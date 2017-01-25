.class public final enum Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
.super Ljava/lang/Enum;
.source "SessionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/ui/help/SessionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScheduleItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

.field public static final enum ADHOC:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

.field public static final enum MEETING:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

.field public static final enum OTHER:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

.field public static final enum SUBSESSION:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    new-instance v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    const-string v1, "MEETING"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->MEETING:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    .line 143
    new-instance v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    const-string v1, "ADHOC"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->ADHOC:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    .line 144
    new-instance v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    const-string v1, "SUBSESSION"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->SUBSESSION:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    .line 145
    new-instance v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->OTHER:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    .line 141
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    sget-object v1, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->MEETING:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->ADHOC:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->SUBSESSION:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->OTHER:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->$VALUES:[Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 141
    const-class v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->$VALUES:[Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    invoke-virtual {v0}, [Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    return-object v0
.end method
