.class public Lnubia/os/ClipServiceManagerExtra;
.super Ljava/lang/Object;
.source "ClipServiceManagerExtra.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "nubia.clipserviceext"

.field public static final TAG:Ljava/lang/String; = "ClipServiceManagerExtra"

.field private static sInstance:Lnubia/os/ClipServiceManagerExtra;


# instance fields
.field private mService:Lnubia/os/IClipService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lnubia/os/ClipServiceManagerExtra;

    invoke-direct {v0}, Lnubia/os/ClipServiceManagerExtra;-><init>()V

    sput-object v0, Lnubia/os/ClipServiceManagerExtra;->sInstance:Lnubia/os/ClipServiceManagerExtra;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lnubia/os/ClipServiceManagerExtra;->mService:Lnubia/os/IClipService;

    if-nez v0, :cond_1

    const-class v1, Lnubia/os/ClipServiceManagerExtra;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnubia/os/ClipServiceManagerExtra;->mService:Lnubia/os/IClipService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "nubia.clipserviceext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IClipService$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IClipService;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/ClipServiceManagerExtra;->mService:Lnubia/os/IClipService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lnubia/os/ClipServiceManagerExtra;
    .locals 1

    .prologue
    sget-object v0, Lnubia/os/ClipServiceManagerExtra;->sInstance:Lnubia/os/ClipServiceManagerExtra;

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lnubia/os/ClipServiceManagerExtra;->mService:Lnubia/os/IClipService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lnubia/os/ClipServiceManagerExtra;->mService:Lnubia/os/IClipService;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/IClipService;->addData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getData(I)Ljava/util/List;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, "datas":Ljava/util/List;
    :try_start_0
    iget-object v1, p0, Lnubia/os/ClipServiceManagerExtra;->mService:Lnubia/os/IClipService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/os/ClipServiceManagerExtra;->mService:Lnubia/os/IClipService;

    invoke-interface {v1, p1}, Lnubia/os/IClipService;->getData(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "datas":Ljava/util/List;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    return-object v0

    .restart local v0    # "datas":Ljava/util/List;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
