.class public Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;
.super Ljava/lang/Object;
.source "NubiaNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NubiaNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Backend"
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 310
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighPriority(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 315
    :try_start_0
    sget-object v2, Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->getPackagePriority(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 318
    :cond_0
    :goto_0
    return v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NNotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHighPriority(Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "highPriority"    # Z

    .prologue
    const/4 v1, 0x0

    .line 324
    :try_start_0
    sget-object v3, Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    if-eqz p3, :cond_0

    const/4 v2, 0x2

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    const/4 v1, 0x1

    .line 329
    :goto_1
    return v1

    :cond_0
    move v2, v1

    .line 324
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NNotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
