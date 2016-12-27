.class public Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfoTable;
.super Ljava/lang/Object;
.source "AppSettingsInfoTable.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "content://com.android.systemui.settings.notificationcenter/appsettingsinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/notificationcenter/db/AppSettingsInfoTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
