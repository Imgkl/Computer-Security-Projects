.class public final enum Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
.super Ljava/lang/Enum;
.source "MyEventFeatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/features/MyEventFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmailMyEventMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

.field public static final enum DISABLED:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

.field public static final enum FULLY_ON:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

.field public static final enum LOGGED_IN:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

.field public static final enum LOGGED_IN_CANNOT_EDIT_EMAIL:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;


# instance fields
.field final mAnonEnabled:Z

.field final mLoggedInEnabled:Z

.field final mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    const-string v1, "DISABLED"

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->DISABLED:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    .line 139
    new-instance v3, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    const-string v4, "FULLY_ON"

    move v5, v9

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v3, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->FULLY_ON:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    .line 140
    new-instance v3, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    const-string v4, "LOGGED_IN"

    move v5, v10

    move v6, v10

    move v7, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v3, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->LOGGED_IN:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    .line 141
    new-instance v3, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    const-string v4, "LOGGED_IN_CANNOT_EDIT_EMAIL"

    move v5, v11

    move v6, v11

    move v7, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v3, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->LOGGED_IN_CANNOT_EDIT_EMAIL:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    .line 137
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    sget-object v1, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->DISABLED:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->FULLY_ON:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->LOGGED_IN:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->LOGGED_IN_CANNOT_EDIT_EMAIL:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    aput-object v1, v0, v11

    sput-object v0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->$VALUES:[Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0
    .param p3, "mode"    # I
    .param p4, "anonEnabled"    # Z
    .param p5, "loggedInEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    iput p3, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mMode:I

    .line 149
    iput-boolean p4, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mAnonEnabled:Z

    .line 150
    iput-boolean p5, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mLoggedInEnabled:Z

    .line 151
    return-void
.end method

.method public static fromInt(I)Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
    .locals 6
    .param p0, "mode"    # I

    .prologue
    .line 179
    invoke-static {}, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->values()[Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    move-result-object v0

    .local v0, "arr$":[Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 180
    .local v1, "b":Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
    iget v4, v1, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mMode:I

    if-ne p0, v4, :cond_0

    .line 186
    .end local v1    # "b":Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
    :goto_1
    return-object v1

    .line 179
    .restart local v1    # "b":Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "b":Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ EMAILMYEVENT: No EmailMyEventMode with value \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 186
    sget-object v1, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->DISABLED:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    const-class v0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->$VALUES:[Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    return-object v0
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Anon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mAnonEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LoggedIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mLoggedInEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymousAccessEnabled()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mAnonEnabled:Z

    return v0
.end method

.method public isLoggedInAccessEnabled()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mLoggedInEnabled:Z

    return v0
.end method

.method public isShareMyEventEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v0

    .line 170
    .local v0, "isloggedin":Z
    if-eqz v0, :cond_0

    .line 171
    iget-boolean v1, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mLoggedInEnabled:Z

    .line 173
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->mAnonEnabled:Z

    goto :goto_0
.end method
