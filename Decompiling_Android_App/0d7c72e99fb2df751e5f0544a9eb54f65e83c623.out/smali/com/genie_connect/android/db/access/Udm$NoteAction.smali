.class public final enum Lcom/genie_connect/android/db/access/Udm$NoteAction;
.super Ljava/lang/Enum;
.source "Udm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/access/Udm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoteAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/access/Udm$NoteAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/access/Udm$NoteAction;

.field public static final enum ADD:Lcom/genie_connect/android/db/access/Udm$NoteAction;

.field public static final enum REMOVE:Lcom/genie_connect/android/db/access/Udm$NoteAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 646
    new-instance v0, Lcom/genie_connect/android/db/access/Udm$NoteAction;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/db/access/Udm$NoteAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/Udm$NoteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    .line 647
    new-instance v0, Lcom/genie_connect/android/db/access/Udm$NoteAction;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/android/db/access/Udm$NoteAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/db/access/Udm$NoteAction;->REMOVE:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    .line 645
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/genie_connect/android/db/access/Udm$NoteAction;

    sget-object v1, Lcom/genie_connect/android/db/access/Udm$NoteAction;->ADD:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/db/access/Udm$NoteAction;->REMOVE:Lcom/genie_connect/android/db/access/Udm$NoteAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/genie_connect/android/db/access/Udm$NoteAction;->$VALUES:[Lcom/genie_connect/android/db/access/Udm$NoteAction;

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
    .line 645
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/access/Udm$NoteAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 645
    const-class v0, Lcom/genie_connect/android/db/access/Udm$NoteAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/access/Udm$NoteAction;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/access/Udm$NoteAction;
    .locals 1

    .prologue
    .line 645
    sget-object v0, Lcom/genie_connect/android/db/access/Udm$NoteAction;->$VALUES:[Lcom/genie_connect/android/db/access/Udm$NoteAction;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/access/Udm$NoteAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/access/Udm$NoteAction;

    return-object v0
.end method
