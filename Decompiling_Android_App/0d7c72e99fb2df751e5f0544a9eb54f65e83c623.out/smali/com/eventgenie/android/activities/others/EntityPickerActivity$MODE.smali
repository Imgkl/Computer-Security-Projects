.class final enum Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;
.super Ljava/lang/Enum;
.source "EntityPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/EntityPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

.field public static final enum PICK_ENTITY:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

.field public static final enum PICK_LOCATION:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

.field public static final enum SEARCH:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 300
    new-instance v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    const-string v1, "PICK_ENTITY"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->PICK_ENTITY:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    .line 301
    new-instance v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    const-string v1, "PICK_LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->PICK_LOCATION:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    .line 302
    new-instance v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->SEARCH:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    .line 299
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    sget-object v1, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->PICK_ENTITY:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->PICK_LOCATION:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->SEARCH:Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->$VALUES:[Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

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
    .line 299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 299
    const-class v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->$VALUES:[Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    invoke-virtual {v0}, [Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/activities/others/EntityPickerActivity$MODE;

    return-object v0
.end method
