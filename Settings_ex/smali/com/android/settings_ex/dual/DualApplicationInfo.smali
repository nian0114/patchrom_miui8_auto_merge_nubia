.class public Lcom/android/settings_ex/dual/DualApplicationInfo;
.super Ljava/lang/Object;
.source "DualApplicationInfo.java"


# instance fields
.field private mAppNameData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "splitName"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/dual/DualApplicationInfo;->mAppNameData:Ljava/util/ArrayList;

    .line 10
    iput-object p1, p0, Lcom/android/settings_ex/dual/DualApplicationInfo;->mSplitName:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public addAppNameData(Ljava/lang/String;)V
    .locals 1
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualApplicationInfo;->mAppNameData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .param p1, "pPosition"    # I

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualApplicationInfo;->mSplitName:Ljava/lang/String;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualApplicationInfo;->mAppNameData:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualApplicationInfo;->mAppNameData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
