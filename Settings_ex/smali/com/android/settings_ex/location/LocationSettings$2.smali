.class Lcom/android/settings_ex/location/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationSettings$2;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationSettings$2;->this$0:Lcom/android/settings_ex/location/LocationSettings;

    # invokes: Lcom/android/settings_ex/location/LocationSettings;->initUserPrefService()V
    invoke-static {v0}, Lcom/android/settings_ex/location/LocationSettings;->access$200(Lcom/android/settings_ex/location/LocationSettings;)V

    .line 183
    return-void
.end method
