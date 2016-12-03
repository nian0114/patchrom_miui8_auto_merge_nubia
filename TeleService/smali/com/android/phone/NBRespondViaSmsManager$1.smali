.class final Lcom/android/phone/NBRespondViaSmsManager$1;
.super Ljava/util/HashMap;
.source "NBRespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBRespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "canned_response_pref_1"

    const-string v1, "changed_response_1"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBRespondViaSmsManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "canned_response_pref_2"

    const-string v1, "changed_response_2"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBRespondViaSmsManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "canned_response_pref_3"

    const-string v1, "changed_response_3"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBRespondViaSmsManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "canned_response_pref_4"

    const-string v1, "changed_response_4"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBRespondViaSmsManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "canned_response_pref_5"

    const-string v1, "changed_response_5"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBRespondViaSmsManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "canned_response_pref_6"

    const-string v1, "changed_response_6"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBRespondViaSmsManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "canned_response_pref_7"

    const-string v1, "changed_response_7"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/NBRespondViaSmsManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
