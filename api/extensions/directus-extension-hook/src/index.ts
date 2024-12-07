import { defineHook } from '@directus/extensions-sdk';

// src/index.ts
// import { defineHook } from "@directus/extensions-sdk";
import { deleteUnusedM2OItems } from "directus-hook-library";

export default defineHook((register, context) => {
    deleteUnusedM2OItems(register, context, {
        oneCollection: "meta_infos",
        manyCollections: {
            pages: "pages",
            posts: "posts",
        },
    });
});
