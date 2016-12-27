.class Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$1;
.super Ljava/lang/Object;
.source "MultiSettingsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$1;->this$0:Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 90
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "obj1"    # Ljava/lang/String;
    .param p2, "obj2"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/MultiSettingsActivity$PrefsFragment$1;->collator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
