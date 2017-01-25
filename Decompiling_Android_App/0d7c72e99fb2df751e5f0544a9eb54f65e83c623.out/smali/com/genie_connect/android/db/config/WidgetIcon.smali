.class public Lcom/genie_connect/android/db/config/WidgetIcon;
.super Ljava/lang/Object;
.source "WidgetIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/genie_connect/android/db/config/WidgetIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_COLOUR_FILTER:I

.field public static final NO_UNDERLAY:I


# instance fields
.field private final mColourFilter:I

.field private final mDrawableId:I

.field private final mUnderlayId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/genie_connect/android/db/config/WidgetIcon$1;

    invoke-direct {v0}, Lcom/genie_connect/android/db/config/WidgetIcon$1;-><init>()V

    sput-object v0, Lcom/genie_connect/android/db/config/WidgetIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mUnderlayId:I

    .line 55
    iput v0, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mColourFilter:I

    .line 56
    iput p1, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mDrawableId:I

    .line 57
    return-void
.end method

.method protected constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "drawableId"    # I
    .param p2, "underlayId"    # Ljava/lang/Integer;
    .param p3, "colourFilter"    # Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mUnderlayId:I

    .line 66
    :goto_0
    if-eqz p3, :cond_1

    .line 67
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mColourFilter:I

    .line 72
    :goto_1
    iput p1, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mDrawableId:I

    .line 73
    return-void

    .line 63
    :cond_0
    iput v1, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mUnderlayId:I

    goto :goto_0

    .line 69
    :cond_1
    iput v1, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mColourFilter:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "mColourFilter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mColourFilter:I

    .line 79
    const-string v1, "mUnderlayId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mUnderlayId:I

    .line 80
    const-string v1, "mDrawableId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mDrawableId:I

    .line 81
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getColourFilter()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mColourFilter:I

    return v0
.end method

.method public getDrawableId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mDrawableId:I

    return v0
.end method

.method public getUnderlayId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mUnderlayId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetIcon [mUnderlayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mUnderlayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mColourFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mColourFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDrawableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mDrawableId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 104
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "mColourFilter"

    iget v2, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mColourFilter:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string v1, "mUnderlayId"

    iget v2, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mUnderlayId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v1, "mDrawableId"

    iget v2, p0, Lcom/genie_connect/android/db/config/WidgetIcon;->mDrawableId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method
