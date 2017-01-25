.class public final enum Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;
.super Ljava/lang/Enum;
.source "GenieBottomActionbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CUSTOM_BUTTON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

.field public static final enum FOUR:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

.field public static final enum ONE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

.field public static final enum THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

.field public static final enum TWO:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 457
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->ONE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    .line 458
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const-string v1, "TWO"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->TWO:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    .line 459
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const-string v1, "THREE"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    .line 460
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const-string v1, "FOUR"

    invoke-direct {v0, v1, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->FOUR:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    .line 456
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->ONE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->TWO:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->FOUR:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    aput-object v1, v0, v5

    sput-object v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->$VALUES:[Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

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
    .line 456
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 456
    const-class v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->$VALUES:[Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    invoke-virtual {v0}, [Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    return-object v0
.end method
