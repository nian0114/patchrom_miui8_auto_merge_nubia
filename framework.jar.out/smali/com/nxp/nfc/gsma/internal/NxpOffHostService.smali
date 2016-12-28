.class public Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
.super Ljava/lang/Object;
.source "NxpOffHostService.java"


# instance fields
.field public mAidGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mBanner:Landroid/graphics/drawable/Drawable;

.field public mBannerId:I

.field public mContext:Landroid/content/Context;

.field public mDescription:Ljava/lang/String;

.field public mModifiable:Z

.field public mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

.field public mPackageName:Ljava/lang/String;

.field public mSEName:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "SELocation"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "modifiable"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mContext:Landroid/content/Context;

    iput p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mUserId:I

    iput-object p2, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    iput-object p4, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    return-void
.end method


# virtual methods
.method public getBanner()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBannerId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    return-object v0
.end method

.method protected getModifiable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    return v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "banner"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBannerId(I)V
    .locals 0
    .param p1, "bannerid"    # I

    .prologue
    iput p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V
    .locals 0
    .param p1, "nxpNfcController"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    return-void
.end method
