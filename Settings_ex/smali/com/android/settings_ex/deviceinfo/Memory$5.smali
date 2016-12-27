.class Lcom/android/settings_ex/deviceinfo/Memory$5;
.super Landroid/os/AsyncTask;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/Memory;->mount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;Landroid/os/storage/IMountService;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$5;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/Memory$5;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 480
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 485
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory$5;->val$mountService:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory$5;->val$mountService:Landroid/os/storage/IMountService;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/Memory;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 497
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 488
    :cond_0
    const-string v2, "MemorySettings"

    const-string v3, "Mount service is null, can\'t mount"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 490
    :catch_0
    move-exception v2

    goto :goto_0

    .line 492
    :catch_1
    move-exception v0

    .line 493
    .local v0, "iAex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 494
    .end local v0    # "iAex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 495
    .local v1, "illStateEx":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
