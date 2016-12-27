.class final Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;
.super Ljava/util/HashSet;
.source "NubiaNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NubiaNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 69
    const-string v0, "cn.nubia.deskclock.preset"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v0, "com.tencent.mm"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "cn.nubia.contacts"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v0, "cn.nubia.mms"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method
