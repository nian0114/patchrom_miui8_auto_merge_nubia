.class Lcom/android/settings_ex/MoreSettings$3;
.super Ljava/lang/Object;
.source "MoreSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MoreSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MoreSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MoreSettings;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings_ex/MoreSettings$3;->this$0:Lcom/android/settings_ex/MoreSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/MoreSettings$3;->this$0:Lcom/android/settings_ex/MoreSettings;

    # invokes: Lcom/android/settings_ex/MoreSettings;->updateUI()V
    invoke-static {v0}, Lcom/android/settings_ex/MoreSettings;->access$300(Lcom/android/settings_ex/MoreSettings;)V

    .line 133
    return-void
.end method
