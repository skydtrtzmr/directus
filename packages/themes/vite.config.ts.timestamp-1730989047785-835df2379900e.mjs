// vite.config.ts
import vue from "file:///E:/ProgramProjects/VScode_projects/SourceCode/directus/node_modules/.pnpm/@vitejs+plugin-vue@5.1.4_vite@5.2.11_@types+node@18.19.55_sass@1.79.4_terser@5.31.6__vue@3.5.11_typescript@5.6.3_/node_modules/@vitejs/plugin-vue/dist/index.mjs";
import { resolve } from "node:path";
import { nodeExternals } from "file:///E:/ProgramProjects/VScode_projects/SourceCode/directus/node_modules/.pnpm/rollup-plugin-node-externals@7.1.3_rollup@4.21.2/node_modules/rollup-plugin-node-externals/dist/index.js";
import { defineConfig } from "file:///E:/ProgramProjects/VScode_projects/SourceCode/directus/node_modules/.pnpm/vite@5.2.11_@types+node@18.19.55_sass@1.79.4_terser@5.31.6/node_modules/vite/dist/node/index.js";
import dts from "file:///E:/ProgramProjects/VScode_projects/SourceCode/directus/node_modules/.pnpm/vite-plugin-dts@4.2.3_@types+node@18.19.55_rollup@4.21.2_typescript@5.6.3_vite@5.2.11_@types+_sqt2nwm3ctjtf523fwdllx32hy/node_modules/vite-plugin-dts/dist/index.mjs";
var __vite_injected_original_dirname = "E:\\ProgramProjects\\VScode_projects\\SourceCode\\directus\\packages\\themes";
var vite_config_default = defineConfig({
  plugins: [{ ...nodeExternals(), enforce: "pre" }, vue(), dts()],
  build: {
    lib: {
      entry: resolve(__vite_injected_original_dirname, "src/index.ts"),
      fileName: "index",
      formats: ["es"]
    }
  }
});
export {
  vite_config_default as default
};
//# sourceMappingURL=data:application/json;base64,ewogICJ2ZXJzaW9uIjogMywKICAic291cmNlcyI6IFsidml0ZS5jb25maWcudHMiXSwKICAic291cmNlc0NvbnRlbnQiOiBbImNvbnN0IF9fdml0ZV9pbmplY3RlZF9vcmlnaW5hbF9kaXJuYW1lID0gXCJFOlxcXFxQcm9ncmFtUHJvamVjdHNcXFxcVlNjb2RlX3Byb2plY3RzXFxcXFNvdXJjZUNvZGVcXFxcZGlyZWN0dXNcXFxccGFja2FnZXNcXFxcdGhlbWVzXCI7Y29uc3QgX192aXRlX2luamVjdGVkX29yaWdpbmFsX2ZpbGVuYW1lID0gXCJFOlxcXFxQcm9ncmFtUHJvamVjdHNcXFxcVlNjb2RlX3Byb2plY3RzXFxcXFNvdXJjZUNvZGVcXFxcZGlyZWN0dXNcXFxccGFja2FnZXNcXFxcdGhlbWVzXFxcXHZpdGUuY29uZmlnLnRzXCI7Y29uc3QgX192aXRlX2luamVjdGVkX29yaWdpbmFsX2ltcG9ydF9tZXRhX3VybCA9IFwiZmlsZTovLy9FOi9Qcm9ncmFtUHJvamVjdHMvVlNjb2RlX3Byb2plY3RzL1NvdXJjZUNvZGUvZGlyZWN0dXMvcGFja2FnZXMvdGhlbWVzL3ZpdGUuY29uZmlnLnRzXCI7aW1wb3J0IHZ1ZSBmcm9tICdAdml0ZWpzL3BsdWdpbi12dWUnO1xyXG5pbXBvcnQgeyByZXNvbHZlIH0gZnJvbSAnbm9kZTpwYXRoJztcclxuaW1wb3J0IHsgbm9kZUV4dGVybmFscyB9IGZyb20gJ3JvbGx1cC1wbHVnaW4tbm9kZS1leHRlcm5hbHMnO1xyXG5pbXBvcnQgeyBkZWZpbmVDb25maWcgfSBmcm9tICd2aXRlJztcclxuaW1wb3J0IGR0cyBmcm9tICd2aXRlLXBsdWdpbi1kdHMnO1xyXG5cclxuZXhwb3J0IGRlZmF1bHQgZGVmaW5lQ29uZmlnKHtcclxuXHRwbHVnaW5zOiBbeyAuLi5ub2RlRXh0ZXJuYWxzKCksIGVuZm9yY2U6ICdwcmUnIH0sIHZ1ZSgpLCBkdHMoKV0sXHJcblx0YnVpbGQ6IHtcclxuXHRcdGxpYjoge1xyXG5cdFx0XHRlbnRyeTogcmVzb2x2ZShfX2Rpcm5hbWUsICdzcmMvaW5kZXgudHMnKSxcclxuXHRcdFx0ZmlsZU5hbWU6ICdpbmRleCcsXHJcblx0XHRcdGZvcm1hdHM6IFsnZXMnXSxcclxuXHRcdH0sXHJcblx0fSxcclxufSk7XHJcbiJdLAogICJtYXBwaW5ncyI6ICI7QUFBa1osT0FBTyxTQUFTO0FBQ2xhLFNBQVMsZUFBZTtBQUN4QixTQUFTLHFCQUFxQjtBQUM5QixTQUFTLG9CQUFvQjtBQUM3QixPQUFPLFNBQVM7QUFKaEIsSUFBTSxtQ0FBbUM7QUFNekMsSUFBTyxzQkFBUSxhQUFhO0FBQUEsRUFDM0IsU0FBUyxDQUFDLEVBQUUsR0FBRyxjQUFjLEdBQUcsU0FBUyxNQUFNLEdBQUcsSUFBSSxHQUFHLElBQUksQ0FBQztBQUFBLEVBQzlELE9BQU87QUFBQSxJQUNOLEtBQUs7QUFBQSxNQUNKLE9BQU8sUUFBUSxrQ0FBVyxjQUFjO0FBQUEsTUFDeEMsVUFBVTtBQUFBLE1BQ1YsU0FBUyxDQUFDLElBQUk7QUFBQSxJQUNmO0FBQUEsRUFDRDtBQUNELENBQUM7IiwKICAibmFtZXMiOiBbXQp9Cg==
